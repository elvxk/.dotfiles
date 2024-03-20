-- conflict keymap
return {
  {
    "echasnovski/mini.comment",
    opts = {
      mappings = {
        comment = "<leader>.", -- Normal and Visual modes
        comment_line = "<leader>.", -- Toggle comment on current line
        comment_visual = "<leader>.", -- Toggle comment on visual selection
        textobject = "<leader>.", -- Works also in Visual mode if mapping differs from `comment_visual`
      },
    },
  },
}
