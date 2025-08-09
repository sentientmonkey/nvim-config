vim.api.nvim_set_keymap('n', '<leader>m', ':w!\\|:!make %<cr>', {})

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
