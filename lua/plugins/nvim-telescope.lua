return{
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

}
