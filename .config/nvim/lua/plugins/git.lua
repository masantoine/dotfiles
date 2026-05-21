return {
  "lewis6991/gitsigns.nvim",
  opts = { signcolumn = false, },
  keys = {
    {"<Leader>h", function()
      require("gitsigns").setqflist("all")
    end},
  },
}
