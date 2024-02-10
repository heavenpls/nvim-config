local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_servers = {"lua_ls","bashls","clangd","yamlls"}
local on_attach = function (client,bufnr)
    local opt = { buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
   
end
for _,lsp in ipairs(lsp_servers) do
    lspconfig[lsp].setup{
      capabilities = capabilities,
      on_attach = on_attach
    }
end
