return {
  'nvim-telescope/telescope.nvim', version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- optional but recommended
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  keys = {
    { "<leader>f", "<cmd>Telescope find_files<CR>", desc="Fuzzy find file"},
    { "<leader>g", "<cmd>Telescope live_grep<CR>", desc="Grep in current directory"},
  }
}
