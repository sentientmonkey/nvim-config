-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- Colors
    { "folke/tokyonight.nvim", lazy = false },
    { "tpope/vim-vividchalk" },
    { "altercation/vim-colors-solarized" },
    { "chriskempson/vim-tomorrow-theme" },
    { "tomasr/molokai" },
    { "doums/darcula" },
    { "tssm/fairyfloss.vim" },
    { "luochen1990/rainbow" },

    -- General
    { "tpope/vim-surround" },
    { "tpope/vim-unimpaired" },
    { "tpope/vim-endwise" },
    { "tpope/vim-sensible" },
    { "vim-airline/vim-airline" },
    { "vim-airline/vim-airline-themes" },
    { "editorconfig/editorconfig-vim" },

    -- Editing
    { "junegunn/vim-easy-align" },
    { "nvim-tree/nvim-tree.lua" },
    { "nvim-tree/nvim-web-devicons" },

    -- Languages
    { "fatih/vim-go" },
    { "vim-ruby/vim-ruby" },
    { "sunaku/vim-ruby-minitest" },
    { "guns/vim-clojure-static" },
    { "wlangstroth/vim-racket" },
    { "pangloss/vim-javascript" },
    { "Galooshi/vim-import-js" },
    { "mxw/vim-jsx" },
    { "ianks/vim-tsx" },
    { "leafgarland/typescript-vim" },
    { "sentientmonkey/vim-lispy" },
    { "sentientmonkey/vim-lox" },
    { "lambdatoast/elm.vim" },
    { "elixir-editors/vim-elixir" },
    { "mhinz/vim-mix-format" },
    { "LnL7/vim-nix" },
    { "udalov/kotlin-vim" },
    { "terrastruct/d2-vim" },
    { "towolf/vim-helm" },

    -- Seaching
    { "ibhagwan/fzf-lua" },

    -- Development Tool Integration
    { "tpope/vim-fugitive" },
    { "tpope/vim-commentary" },
    { "github/copilot.vim" },
    { "joshuavial/aider.nvim", lazy = true },
    { "janko/vim-test" },

    -- LSP
    { "neovim/nvim-lspconfig" },

    -- Misc
    { "vimwiki/vimwiki" },

    -- Avante
    { "nvim-treesitter/nvim-treesitter", lazy = true },
    { "stevearc/dressing.nvim"},
    { "nvim-lua/plenary.nvim"},
    { "MunifTanjim/nui.nvim"},
    { "MeanderingProgrammer/render-markdown.nvim"},
    { "HakonHarnes/img-clip.nvim"},
    { "yetone/avante.nvim", lazy = true},
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

