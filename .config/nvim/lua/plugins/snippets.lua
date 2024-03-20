-- add html snippet for react
return {
  {
    "rafamadriz/friendly-snippets",
    opts = {
      require("luasnip").filetype_extend("javascriptreact", { "html" }),
      require("luasnip").filetype_extend("typescriptreact", { "html" }),
    },
  },
}
