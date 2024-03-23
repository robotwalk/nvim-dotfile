return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",


    config = function()
      require("mason-lspconfig").setup(
        {
          ensure_installed = {
            "lua_ls",
            "ansiblels",
            "bashls",
            "dockerls",
            "docker_compose_language_service",
            "helm_ls",
            "autotools_ls",
            "marksman",
            "pylsp",
            "taplo",
            "terraformls",
            "yamlls",
            -- "gopls",
            -- "jqls",
            "jsonls"
          }
        }
      )
    end,

  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      -- Global mappings.
      -- See `:help vim.diagnostic.*` for documentation on any of the below functions
--      vim.keymap.set('n', '<leader>e', vim.diagnostics.open_float)
--      vim.keymap.set('n', '[d', vim.diagnostics.goto_prev)
--      vim.keymap.set('n', ']d', vim.diagnostics.goto_next)
--      vim.keymap.set('n', '<leader>q', vim.diagnostics.setloclist)
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.ansiblels.setup({})
      lspconfig.bashls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.helm_ls.setup({})
      lspconfig.autotools_ls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.taplo.setup({})
      lspconfig.terraformls.setup({})
      lspconfig.yamlls.setup({})
      --      lspconfig.gopls.setup({})
      --      lspconfig.jqls.setup({})
      lspconfig.jsonls.setup({})
      vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)


      vim.keymap.set('n', '<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', '<leader>f', function()
        vim.lsp.buf.format { async = true }
      end, opts)
      vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
    end,

  }
}
