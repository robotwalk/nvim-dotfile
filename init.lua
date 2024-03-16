require("user.options")
require("user.keymaps")
require("user.lazy")
-- otherwise nvim-tree wont work
require("nvim-tree").setup {}
require('lualine').setup {
  options = {
    theme = 'gruvbox_dark'
  }
}
