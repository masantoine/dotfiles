return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- optional but recommended
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    keys = {
      { "<leader>f", "<cmd>Telescope find_files<CR>", desc="Fuzzy find file"},
      { "<leader>g", "<cmd>Telescope live_grep<CR>", desc="Grep in current directory"},
      { "<leader>d", "<cmd>Telescope lsp_definitions<CR>", desc="Find definitions"},
      { "<leader>r", "<cmd>Telescope lsp_references<CR>", desc="Find references"},
      { "<leader>t", "<cmd>Telescope<CR>", desc="List all telescope picker"},
    }
  },
  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require("telescope").load_extension("frecency")
    end,
  },
  {
    "cljoly/telescope-repo.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          repo = {
            settings = {
              auto_lcd = true,
            },
          },
        },
      })
      require("telescope").load_extension("repo")
    end,
    keys = {
      { "<leader>p", "<cmd>Telescope repo<CR>", desc="Fuzzy find project"},
    }
  }
}
