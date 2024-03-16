local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

myPlugins = {
  ---------------- nightfly colorscheme ------------------
  {
    "bluz71/vim-nightfly-guicolors",
    config = function()
    vim.cmd([[colorscheme nightfly]]) -- set this colorscheme 
    end,
  },
  ---------------- END nightfly colorscheme ------------------
  ---------------- nvim-tree------------------------------
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      local nvimtree = require("nvim-tree")
      -- disable netrw (legacy file explorer)
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      local keymap = vim.keymap

      keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
      keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
      keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    end,
  },
  ---------------- END nvim-tree------------------------------
  ---------------- nvim-telescope------------------------------
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter"
    },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- find files by name
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- find content in file
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fc', builtin.grep_string, {}) -- word under cursor
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
  },
  ---------------- END nvim-telescope------------------------------
  ---------------- nvim-terminal------------------------------
  {
    's1n7ax/nvim-terminal',
    config = function()
        vim.o.hidden = true
        require('nvim-terminal').setup()
    end,
  },
  ---------------- END nvim-terminal------------------------------
  ---------------- nvim-treesitter ------------------------------
  ---------------- END nvim-treesitter ------------------------------
}

require("lazy").setup(

myPlugins

)
