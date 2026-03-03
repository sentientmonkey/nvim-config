return {
  "tpope/vim-fugitive",
  {
    "tpope/vim-commentary",
    vim.api.nvim_set_keymap('n', '<leader>c', ':Commentary<cr>', {noremap = true}),
  },
  {
    "github/copilot.vim",
  },
  {
    "janko/vim-test",
     vim.api.nvim_set_keymap('n', '<leader>t', ':TestNearest<cr>', {}),
     vim.api.nvim_set_keymap('n', '<leader>T', ':TestFile<cr>', {}),
     vim.api.nvim_set_keymap('n', '<leader>a', ':TestSuite<cr>', {}),
     vim.api.nvim_set_keymap('n', '<leader>l', ':TestLast<cr>', {}),
     vim.api.nvim_set_keymap('n', '<leader>g', ':TestVisit<cr>', {})
  }
}
