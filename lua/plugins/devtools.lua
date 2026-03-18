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
  },
    "greggh/claude-code.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required for git operations
    },
    vim.keymap.set('n', '<leader>cc', '<cmd>ClaudeCode<CR>', { desc = 'Toggle Claude Code' }),
    vim.keymap.set('n', '<leader>cC', '<cmd>ClaudeCodeContinue<CR>', { desc = 'Toggle Claude Code with --continue' }),
    vim.keymap.set('n', '<leader>cr', '<cmd>ClaudeCodeResume<CR>', { desc = 'Toggle Claude Code with --resume prompt' }),
}
