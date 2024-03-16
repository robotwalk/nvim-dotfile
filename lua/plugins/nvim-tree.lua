return{

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
}
