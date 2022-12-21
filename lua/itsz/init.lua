-----------------------------------------------------------
-- ITSZ'S PERSONAL NEOVIM CONFIGURATION
-- Balancing aesthetics, usability and performance
-- Editor Use-Cases:
--    Full-Stack Web Development
--    Personal Knowledge Management
--
-- AUTHOR       : Zaki Juhari
-- LAST UPDATED : 17 DECEMBER 2022
-----------------------------------------------------------
require "options"
require "autocmds"

local INSTALL_PATH = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(INSTALL_PATH)) > 0 then
  vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim ",
    INSTALL_PATH
 })
  require "plugins"
  vim.cmd "PackerSync"
end
