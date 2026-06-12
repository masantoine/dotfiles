return {
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,  -- needs to be loaded for blame
    opts = { signcolumn = false },
    keys = {
      {"<Leader>b", function()
        if vim.bo.filetype == "gitsigns-blame" then
          vim.cmd("close")
	else
	  require("gitsigns").blame()
	end
      end, "toggle git blame"},

      {"<Leader>s", function()
        local gitsign = require("gitsigns")
	gitsign.toggle_signs()
	gitsign.toggle_word_diff()
      end, "toggle git info"},
    },
  }
}
