-- Reserve space for diagnostic icons
vim.opt.signcolumn = 'yes'

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'tsserver',
  'eslint',
  'lua_ls',
  'jdtls'
})

lsp.configure('jdtls', {
  flags = {
    debounce_text_changes = 150,
  },
  on_attach = function(client, bufnr)
    print('lsp server (jdtls) attached')
  end
})
-- Pass arguments to a language server
lsp.configure('tsserver', {
  on_attach = function(client, bufnr)
    print('hello tsserver')
  end,
  settings = {
    completions = {
      completeFunctionCalls = true
    }
  }
})

-- Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
