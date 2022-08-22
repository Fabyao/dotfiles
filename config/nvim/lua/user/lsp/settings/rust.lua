
 local extension_path = '/home/cactus/.vscode/extensions/vadimcn.vscode-lldb-1.6.10/'
 local codelldb_path = extension_path .. 'adapter/codelldb'
 local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'

return {
    tools = {
      -- autoSetHints = false,
      on_initialized = function()
        vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "CursorHold", "InsertLeave" }, {
          pattern = { "*.rs" },
          callback = function()
            vim.lsp.codelens.refresh()
          end,
        })
      end,
  
    
    },
    server = {     
      on_attach = require("user.lsp.handlers").on_attach,
      capabilities = require("user.lsp.handlers").capabilities,
  
      settings = {
        ["rust-analyzer"] = {
          lens = {
            enable = true,
          },
          checkOnSave = {
            command = "clippy",
          },
        },
      },
    },
    dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path)
      },
  }
  -- return {
  --   settings = {
  --     rust_analyzer = {
  --       inlayHints = {
  --         bindingModeHints = {
  --           enable = true,
  --         },
  --         typeHints = {
  --           enable = true,
  --           hideClosureInitialization = false,
  --           hideNamedConstructor = false,
  --         },
  --         chainingHints = {
  --           enable = true,
  --         },
  --         closingBraceHints = {
  --           enable = true,
  --           minLines = 25,
  --         },
  --         closureReturnTypeHints = {
  --           enable = "never",
  --         },
  --         lifetimeElisionHints = {
  --           enable = "never",
  --           useParameterNames = false,
  --           maxLength = 25,
  --         },
  --         parameterHints = {
  --           enable = true,
  --         },
  --         reborrowHints = {
  --           enable = "never",
  --         },
  --         renderColons = true,
  --       },
  --     },
  --   },
  -- }
  