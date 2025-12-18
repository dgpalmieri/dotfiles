local coq = require "coq"

vim.diagnostic.config({
  virtual_text = true,
  virtual_text = {
    spacing = 4,
    prefix = '●',
  },
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(                 
    vim.lsp.diagnostic.on_publish_diagnostics, {                                      
        signs = false,                                                                  
    }                                                                                 
)

vim.lsp.config('ty', {
    cmd = {'ty', 'server'},
    filetypes = {'python'},
    root_markers = {'pyproject.toml', '.git'},
    capabilities = coq.lsp_ensure_capabilities()
})

vim.lsp.config('ruff', {
    cmd = {'ruff', 'server', '--preview'},
    filetypes = {'python'},
    root_markers = {'pyproject.toml', '.git'},
    capabilities = coq.lsp_ensure_capabilities()
})

vim.lsp.config('rust-analyzer', {
    cmd = {'rust-analyzer'},
    filetypes = {'rust'},
    root_markers = {'Cargo.toml', 'Cargo.lock', '.git'},
    capabilities = coq.lsp_ensure_capabilities()
})

vim.lsp.config('bash-language-server', {
    cmd = { 'bash-language-server', 'start' },
    filetypes = {'sh'},
    root_markers = {'.git'},
    capabilities = coq.lsp_ensure_capabilities()
})

vim.lsp.enable({'ty', 'ruff', 'rust-analyzer', 'bash-language-server'})
