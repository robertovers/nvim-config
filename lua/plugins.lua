local packer = require("packer")

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use "wbthomason/packer.nvim"
    use "tjdevries/colorbuddy.nvim"
    use {
      "mcchrish/zenbones.nvim",
      requires = "rktjmp/lush.nvim"
    }
    use "nvim-tree/nvim-web-devicons"
    use {
        "hoob3rt/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    use "neovim/nvim-lspconfig"
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use "onsails/lspkind-nvim"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/nvim-cmp"
    use "L3MON4D3/LuaSnip"
    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/plenary.nvim"
    use "akinsho/bufferline.nvim"
    use "lewis6991/gitsigns.nvim"
    use "nvim-tree/nvim-tree.lua"
    use "junegunn/fzf"
    use "junegunn/fzf.vim"
    use {
    'goolord/alpha-nvim',
      requires = 'nvim-tree/nvim-web-devicons'
    }
end)

