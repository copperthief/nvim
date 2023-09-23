
require "lava.plugins"
require "lava.options"

local status_ok, currenttheme = pcall(require, "lava.currenttheme")
if not status_ok then
  print("Couldn't set theme")
  return
end



