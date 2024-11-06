-- Basic configuration
require("vim-config")

-- Setup lazy.nvim
require("lazy_setup")
require("lazy").setup({
   spec = {
      {import = "plugins" },
   },
   install = {colorscheme = { "habamax" } },
   checker = { enabled = true, notify = false },
})
