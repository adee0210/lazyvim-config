return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "warmer", -- dark | darker | cool | deep | warm | warmer
        transparent = true,
        term_colors = true,
      })
      require("onedark").load()
    end,
  },
}
