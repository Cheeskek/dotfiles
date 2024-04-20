local lspconfig = require('lspconfig')
lspconfig.clangd.setup {}
lspconfig.pyright.setup {}
lspconfig.rust_analyzer.setup {
    settings = {
    ['rust-analyzer'] = {},
  },
}
lspconfig.gopls.setup{
    settings = {
        staticcheck = true,
        gofumpt = true,
    },
}
require('lspconfig').verible.setup{
  cmd = {'svls'},
}
