return {
  {
    'akinsho/toggleterm.nvim',
    config = true,
    keys = {
      { "<leader>tt", "<cmd>1ToggleTerm direction=float<CR>", desc="Open temporary floating terminal"},
      { "<leader>t1", "<cmd>101ToggleTerm direction=float name=global-1<CR>", desc="Open global floating terminal"},
      { "<leader>t2", "<cmd>102ToggleTerm direction=float name=global-2<CR>", desc="Open global floating terminal"},
      { "<leader>t3", "<cmd>103ToggleTerm direction=float name=global-3<CR>", desc="Open global floating terminal"},
      { "<C-space>", "<cmd>ToggleTerm<CR>", desc="Call toggle term", mode = "t"},
    }
  }
}
