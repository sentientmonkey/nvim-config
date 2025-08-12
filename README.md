# Neovim config

This is my neovim config. It's a replacement for my existing [vim-config](https://github.com/sentientmonkey/vim-config).

# Installation

Normally this can be installed directly by cloning.

```bash
git clone git@github.com:sentientmonkey/nvim-config.git ~/.config/nvim
```
cd ~/.config/nvim
./bin/install
```

This can also be used from nix config as a dotfile & submodule.

# Configuration

The main configuration starts in `init.lua`.

* `lua/config/lazy.lua` - Lazy.nvim initialization
* `lua/plugins/*.lua` - Plugins and configurations
* `lua/user/*.lua` - User-specific configurations

# Plugins

Currently using Lazy.vim for plugins management until `vim.pack` is stable.

* `lualine.nvim` - Statusline
* `nvim-tree.lua` - File explorer
* `telescope.nvim` - Fuzzy finder
* `nvim-treesitter` - Syntax highlighting
* `tokyonight.nvim` - Colorscheme
* `nvim-lspconfig` - LSP configurationSP configurationrs
