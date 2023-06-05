return require('packer').startup(function(use)
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use { 'norcalli/nvim-colorizer.lua' }
use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}
use 'mfussenegger/nvim-jdtls'
use { 'ibhagwan/fzf-lua',
  -- optional for icon support
  requires = { 'nvim-tree/nvim-web-devicons' }
}
use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
    }
}
-- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- bufferline
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    -- treesitter (新增)
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'shaunsingh/nord.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'voldikss/vim-translator'
    use 'hollowtree.vue-snippets'
    use { 'junegunn/fzf', run = 'cd ~/.fzf && ./install --all' }
    use { 'junegunn/fzf.vim', after = "fzf" }

end)
