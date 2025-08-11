require("nvim-tree").setup()

-- Function to show the current line's LSP diagnostic message with severity-based colors
local function lsp_current_line_diagnostic()
  local bufnr = vim.api.nvim_get_current_buf()
  local line = vim.api.nvim_win_get_cursor(0)[1] - 1
  local diags = vim.diagnostic.get(bufnr, { lnum = line })

  if #diags > 0 then
    local d = diags[1] -- use the first diagnostic for the line
    local icon, hl_group = '', ''

    if d.severity == vim.diagnostic.severity.ERROR then
      icon, hl_group = ' ', 'DiagnosticError'
    elseif d.severity == vim.diagnostic.severity.WARN then
      icon, hl_group = ' ', 'DiagnosticWarn'
    elseif d.severity == vim.diagnostic.severity.INFO then
      icon, hl_group = ' ', 'DiagnosticInfo'
    elseif d.severity == vim.diagnostic.severity.HINT then
      icon, hl_group = ' ', 'DiagnosticHint'
    end

    -- Wrap the message in highlight group
    return string.format("%%#%s#%s%s%%*", hl_group, icon, d.message:gsub("\n", " "))
  end
  return ''
end

require('lualine').setup {
  options = {
    theme = 'auto',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    icons_enabled = true
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff' },
    lualine_c = {
      {
        'diagnostics',
        sources = { 'nvim_lsp' },
        sections = { 'error', 'warn', 'info', 'hint' },
        symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
        colored = true,
        update_in_insert = false,
        always_visible = true,
      },
      lsp_current_line_diagnostic
    },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  }
}

require('avante').setup({})
