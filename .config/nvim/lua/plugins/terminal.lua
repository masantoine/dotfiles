return {
  {
    'akinsho/toggleterm.nvim',
    config = true,
    keys = {
      { "<leader>e", "<cmd>ToggleTerm direction=float<CR>", desc="Open floating terminal"},
      { "<C-space>", "<cmd>ToggleTerm direction=float<CR>", desc="Call toggle term", mode = "t"},
    }
  }
}
