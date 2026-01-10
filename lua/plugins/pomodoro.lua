return {
  {
    "quentingruber/pomodoro.nvim",
    lazy = false,
    opts = {
      work_duration = 50,
      break_duration = 10,
    },
    keys = {
      { "<leader>z", group = "Pomodoro" },
      { "<leader>zr", "<cmd>PomodoroStart<cr>", desc = "Run" },
      { "<leader>zs", "<cmd>PomodoroStop<cr>", desc = "Stop" },
    },
  },
}
