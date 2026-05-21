-- Disable some langage provider
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Change map leader
vim.g.mapleader = " "

-- Disable highlight search
vim.opt.hlsearch = false

-- remap arrow
vim.keymap.set("n", "<Left>", ":cp<CR>")
vim.keymap.set("n", "<Right>", ":cn<CR>")

-- include plugins
require("config.lazy")

-- include filetype specific
require("config.lsp")

vim.diagnostic.enable = true
vim.diagnostic.config({
  virtual_lines = { current_line = true } ,
})
