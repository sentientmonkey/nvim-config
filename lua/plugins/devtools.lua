return {
  "tpope/vim-fugitive",
  {
    "tpope/vim-commentary",
    vim.api.nvim_set_keymap('n', '<leader>c', ':Commentary<cr>', {noremap = true}),
  },
  {
    "github/copilot.vim",
    config = function()
      -- Disable auto-trigger
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_enabled = true

      -- Clear default mappings so it doesn't trigger automatically
      vim.api.nvim_set_keymap("i", "<Tab>", "", { noremap = true, silent = true })

      -- Map Ctrl-J to accept Copilot suggestion
      vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

      -- Optional: completely disable inline suggestions until you press the key
      vim.cmd([[
        imap <silent><script><expr> <C-j> copilot#Accept("\<CR>")
      ]])
    end
  },
  {
    "joshuavial/aider.nvim",
    opts = {
      auto_manage_context = false,
      default_bindings = false,
      debug = true,
      vim = true, 
      ignore_buffers = {},
    },

    vim.api.nvim_set_keymap('n', '<leader>Ao', ':AiderOpen --no-auto-commits<CR>', {noremap = true, silent = true}),
    vim.api.nvim_set_keymap('n', '<leader>Am', ':AiderAddModifiedFiles<CR>', {noremap = true, silent = true})
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
