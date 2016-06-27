local application = require "mjolnir.application"
local window = require "mjolnir.window"
local hotkey = require "mjolnir.hotkey"
local alert = require "mjolnir.alert"

local cmdShift = { "cmd", "shift" }
local cmdCtrlShift = { "cmd", "shift", "ctrl" }

hotkey.bind(cmdShift, "M", function()
  local current = window.focusedwindow()
  current:maximize()
end)


hotkey.bind(cmdShift, "P", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0.05, y = 0.05, w = 0.9, h = 0.9})
end)

hotkey.bind(cmdCtrlShift, "P", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0.1, y = 0.1, w = 0.8, h = 0.8})
end)

hotkey.bind(cmdCtrlShift, "H", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0.1, y = 0.1, w = 0.4, h = 0.8})
end)

hotkey.bind(cmdCtrlShift, "L", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0.5, y = 0.1, w = 0.4, h = 0.8})
end)

hotkey.bind(cmdShift, "H", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0, y = 0, w = 0.5, h = 1.0})
end)

hotkey.bind(cmdShift, "L", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0.5, y = 0, w = 0.5, h = 1.0})
end)

hotkey.bind(cmdShift, "J", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0, y = 0.5, w = 1.0, h = 0.5})
end)

hotkey.bind(cmdShift, "K", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0, y = 0, w = 1.0, h = 0.5})
end)
