return{
  ---------------- nvim-treesitter ------------------------------
 {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   config = function () 
     local configs = require("nvim-treesitter.configs")
     configs.setup({
         ensure_installed = {  "c", "lua", "vim", "vimdoc", "query",  "html", "dockerfile", 
                               "bash", "awk", "go", "gotmpl", "hcl", "jq", "json", "latex", "luadoc", 
                               "make", "markdown", "python", "regex", "toml", "xml", "yaml"},
         sync_install = false,
         highlight = { enable = true },
         indent = { enable = true },  
       })
   end,
 },
  ---------------- END nvim-treesitter ------------------------------

}
