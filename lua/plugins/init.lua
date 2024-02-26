require("lazy").setup({
	{
		'Mofiqul/dracula.nvim',
		init = function()
			vim.cmd[[colorscheme dracula]]
		end,
	},
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require("mason-lspconfig").setup{
                ensure_installed = { "lua_ls","bashls","clangd","yamlls"},
                automatic_installation = true
            }
        end,
    },
    {
        'williamboman/mason.nvim',
        config = function()
            require("mason").setup{}
        end,
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            require"plugins.config.lspconfig"
    	end,
    },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            require"plugins.config.cmp"
    	end,
    },
    {
	    'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
    },
    {
        'nvim-tree/nvim-tree.lua',
        opts = {
        },
        init = function ()
            require("nvim-tree").setup({
                hijack_netrw = true,
                hijack_directories = {
                    enable = true,
                    auto_open = true
                },
                actions = {
                    open_file = {
                        quit_on_open = true
                    }
                },
                  sort = {
                    sorter = "case_sensitive",
                  },
                  view = {
                    width = 30,
                  },
                  renderer = {
                    group_empty = true,
                  },
                  filters = {
                    dotfiles = false,
                  },
        })
        end,
        keys = {
            { "<A-m>",":NvimTreeToggle<CR>",desc = "NvimTree" }
        }
    },{
    
        'hrsh7th/cmp-path',
        'nvim-tree/nvim-web-devicons',
    },{
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        init = function ()
            require("lualine").setup()
        end
    },{
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        keys = {
            { "ff",":Telescope find_files<CR>",desc="TelescopeFindFile" }
        }
    },{'romgrk/barbar.nvim',
        dependencies = {
          'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {},
  },
})

