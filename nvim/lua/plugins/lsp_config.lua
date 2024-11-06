return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end
   },
   {
      "williamboman/mason-lspconfig.nvim",
      opts = {
         auto_install = true,
      },
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local capabilities = require('cmp_nvim_lsp').default_capabilities()
         -- load lsps
         local lspconfig = require("lspconfig")
         lspconfig.lua_ls.setup{
            capabilities = capabilities
         }
         lspconfig.pylsp.setup{
            capabilities = capabilities
         }
         lspconfig.ltex.setup{
            capabilities = capabilities
         }
         lspconfig.sqls.setup{
            capabilities = capabilities
         }
         -- key binds
         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
         vim.keymap.set({'n', 'v'}, '<space>ca', vim.lsp.buf.code_action, {})
      end
   }
}