-- Disable some langage provider
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Change map leader
vim.g.mapleader = " "

-- include plugins
require("config.lazy")

-- include filetype specific
require("config.lsp")
