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
            "gopls",
            "helm_ls",
            "json_ls",
            "tsserver",
            "jinja_lsp",
            "jqls",
            "autotools_ls",
            "marksman",
            "pylsp",
            "taplo",
            "terraformls",
            "yamlls"
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
      lspconfig.gopls.setup({})
      lspconfig.helm_ls.setup({})
      lspconfig.json_ls.setup({})
      lspconfig.tsserver({})
      lspconfig.jinja_lsp({})
      lspconfig.jqls({})
      lspconfig.autotools_ls({})
      lspconfig.marksman({})
      lspconfig.pylsp({})
      lspconfig.taplo({})
      lspconfig.terraformls({})
      lspconfig.yamlls({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    end,
  }
}
