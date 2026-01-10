return {
  "Pocco81/auto-save.nvim",
  event = "VeryLazy",
  opts = {
    debounce_delay = 1000,
    trigger_events = {
      -- chỉ save khi rời buffer hoặc focus out
      immediate_save = { "FocusLost", "BufLeave" },
    },
    condition = function()
      return vim.bo.modified
    end,
  },
}
