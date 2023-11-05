
require "lava.plugins"
require "lava.options"
require "lava.lsp-config"
require "lava.completion"

local status_ok, currenttheme = pcall(require, "lava.currenttheme")
if not status_ok then
  print("Couldn't set theme")
  return
end


-- TODO: look into codelldb 



