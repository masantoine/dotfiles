return {
  {
    "rmagatti/auto-session",
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      allowed_dirs = { "~/*" },
      cwd_change_handling = true,
    },
  }
}
