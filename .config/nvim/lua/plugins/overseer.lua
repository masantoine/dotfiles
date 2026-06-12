return {
  {
    'stevearc/overseer.nvim',
    ---@module 'overseer'
    ---@type overseer.SetupOpts
    opts = {},
    keys = {
      {
        "<leader>or", function()
          local overseer = require("overseer")
          overseer.run_task({ name = "run script", autostart = false }, function(task)
            if task then
              task:add_component({ "restart_on_save", paths = { vim.fn.expand("%:p") } })
              task:start()
              task:open_output("vertical")
            else
              vim.notify("WatchRun not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
            end
          end)
        end
      }
    },
  }
}
