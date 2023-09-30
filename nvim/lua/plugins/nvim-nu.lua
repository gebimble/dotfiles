return {
  "LhKipp/nvim-nu",
  run = ":TSInstall nu",
  config = function()
    require("nu").setup({})
  end,
}
