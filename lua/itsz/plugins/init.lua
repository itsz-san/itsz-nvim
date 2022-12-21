-----------------------------------------------------------
-- PLUGIN MANAGER
--
-- AUTHOR       : Zaki Juhari
-- LAST UPDATED : 17 DECEMBER 2022
-----------------------------------------------------------

local PACKER_OK, packer = pcall(require, "packer")

if PACKER_OK then

  local PLUGINS_DIR = vim.fn.stdpath("config") .. "/lua/itsz/plugins"
  local PLUGIN_FILES = vim.fn.readdir(PLUGINS_DIR)
  local PLUGINS = {}

  for _, file in ipairs(PLUGIN_FILES) do
    if file ~= "init.lua" then
      file = "itsz.plugins" .. string.gsub(file, ".lua","")
      table.insert( PLUGINS, require(file) )
    end
  end

  packer.init({
    auto_clean = true,
    compile_on_sync = true,
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end
    }
  })


  packer.startup({PLUGINS})
end

