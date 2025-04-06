local M = {}

local MAX_BRIGHTNESS = 1
local MIN_BRIGHTNESS = -6
local DAYLIGHT_DURATION = 12
local NOON_TIME = 12

local function set_adaptive_brightness(user_opts)
	math = require("math")
	os = require("os")
	local current_hour = os.date("*t").hour

	local min_brightness = user_opts.adaptive_brightness.min_brightness or MIN_BRIGHTNESS
	local max_brightness = user_opts.adaptive_brightness.max_brightness or MAX_BRIGHTNESS
	local noon_time = user_opts.adaptive_brightness.noon_time or NOON_TIME
	local daylight_duration = user_opts.adaptive_brightness.daylight_duration or DAYLIGHT_DURATION

	-- Normalize time for smooth transition
	local brightness = min_brightness
		+ (max_brightness - min_brightness)
		* (1 + math.cos(math.pi * (current_hour - noon_time) / daylight_duration))
		/ 2
	user_opts.brightness = brightness

	return user_opts
end

---@param start_delay? integer -- in seconds
---@param step_delay? integer -- in seconds
M.setup_adaptive = function(start_delay, step_delay)
	local config = require("posterpole.config")
	if config.current.adaptive_brightness.enabled then
		local loop = vim.loop
		if vim.fn.has("nvim-0.10") then
			loop = vim.uv
		end
		local timer = loop.new_timer()
		local minutes_now = require("os").date("*t").min
		start_delay = start_delay or (61 - minutes_now) * 60 -- wait next hour
		step_delay = step_delay or 3600 -- every hour by default
		timer:start(
			start_delay * 1000,
			step_delay * 1000,
			vim.schedule_wrap(function()
				vim.cmd("colorscheme posterpole")
			end)
		)
	end
end

M._colorscheme = function(variant)
	local config = require("posterpole.config").current
	if config.adaptive_brightness.enabled then
		config = set_adaptive_brightness(config)
	end

	local posterpole = require("posterpole.highlighs")

	vim.g.colors_name = variant
	posterpole.clear_hl()
	posterpole.set_all(variant, config)
end

M.setup = require("posterpole.config").setup

return M
