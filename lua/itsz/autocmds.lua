-----------------------------------------------------------
-- AUTOCOMMANDS
--
-- AUTHOR       : Zaki Juhari
-- LAST UPDATED : 22 DECEMBER 2022
-----------------------------------------------------------
local MAKE_AUGROUP = vim.api.nvim_create_augroup
local MAKE_AUTOCMD  = vim.api.nvim_create_autocmd

--[[
--  RELOAD PLUGINS
--]]
MAKE_AUTOCMD({"BufWritePost"}, {
  desc = "Reload configurations when changes are made in plugin folder",
  group = MAKE_AUGROUP("ReloadPlugins", 
    {
      clear = true
    }
  ),
  pattern = vim.fn.stdpath("config") .. "lua/itsz/plugins",
  callback = function ()
    for k,v in pairs(package.loaded) do
      if string.match(k, "^itsz.plugins") then
        package.loaded[k] = nil
      end
    end
    vim.cmd("luafile init.lua")
    require("packer").sync()
  end
}) -- END RELOAD PLUGINS
