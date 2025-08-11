return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup {
        defaults = {
          file_ignore_patterns = { '.git' },
          mappings = {
            i = {
              ["<C-u>"] = false, -- disable clearing the prompt
              ["<C-d>"] = false, -- disable deleting half of the prompt
            },
          },
        },
      }
      vim.api.nvim_set_keymap('n', '<c-p>', ':Telescope find_files<cr>', { noremap = true })
      vim.api.nvim_set_keymap('n', '<c-s>', ':Telescope live_grep<cr>', { noremap = true })
      vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<cr>', { noremap = true })
      vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<cr>', { noremap = true })
    end,
  }
}
