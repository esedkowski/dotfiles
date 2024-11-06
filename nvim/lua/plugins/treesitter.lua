return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   config  = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
         auto_intall = true,
         highlight = {enable = true },
        indent = { enable = true },
     })
   end
}
