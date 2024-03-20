-- auto install tree sitter
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      auto_install = true, -- require tree-sitter-cli (npm i -g tree-sitter-cli)
    },
  },
}
