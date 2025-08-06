require("config.lazy")

require("user.options")

require("lazy").setup({
  spec = {
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
  import = "plugins",
  },
})

require("user")
