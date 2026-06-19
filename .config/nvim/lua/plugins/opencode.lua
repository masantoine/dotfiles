return {
  {
    "olimorris/codecompanion.nvim",
    version = "^19.0.0",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      interactions = {
	chat = { adapter = "opencode" },
      },
      opts = {
        log_level = "DEBUG",
      }
    },
    keys = {
      { "<leader>a", "<cmd>CodeCompanionAction<cr>", desc = "CodeCompanion action" },
    },
  },
}
