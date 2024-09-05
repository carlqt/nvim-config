vim.keymap.set("n", "<leader>lq", "<cmd>lua vim.lsp.buf.code_action()<cr>", { silent = true })

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = function()
      -- Porting nvchad defaults for lsp config
      local on_attach = require("nvchad.configs.lspconfig").on_attach
      local on_init = require("nvchad.configs.lspconfig").on_init
      local capabilities = require("nvchad.configs.lspconfig").capabilities

      -- Adding vim-ufo fold capabilities
      capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true,
      }

      local handlers = {
        function(server_name)
          local config = require("lspconfig")

          -- tsserver was renamed to ts_ls
          if server_name == 'tsserver' then
            return config.ts_ls.setup({
              on_attach = on_attach,
              on_init = on_init,
              capabilities = capabilities,
            })
          end

          config[server_name].setup {
            on_attach = on_attach,
            on_init = on_init,
            capabilities = capabilities,
          }
        end,
      }

      return {
        handlers = handlers,
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
  },
}
