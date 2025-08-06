return {
  {
    "ibhagwan/fzf-lua",
    vim.api.nvim_set_keymap('n', '<c-p>', ':FzfLua files<cr>', {noremap = true}),
    vim.api.nvim_set_keymap('n', '<c-s>', ':FzfLua live_grep<cr>', {noremap = true}),
  }
}
