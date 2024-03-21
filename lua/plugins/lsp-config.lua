return{
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
--            "gopls",
--            "jqls",
            "jsonls"
          }
        }
      )
  end,
},
  {
    'neovim/nvim-lspconfig',
    config = function()
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
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    end,
  }
}
