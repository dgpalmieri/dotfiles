local lsp = require "lspconfig"
local coq = require "coq"

lsp.ruff.setup({
    capabilities = coq.lsp_ensure_capabilities(),
    cmd = { "ruff", "server", "--preview" }
})

lsp.basedpyright.setup({
    capabilities = coq.lsp_ensure_capabilities(),
    settings = {
    basedpyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    analysis = {
      -- Ignore all files for analysis to exclusively use Ruff for linting
      -- ignore = { '*' },
    },
  },
})

lsp.rust_analyzer.setup( coq.lsp_ensure_capabilities() )

vim.diagnostic.config({
  virtual_text = true,  -- Make sure this isn't set to false
  -- or configure it with options:
  virtual_text = {
    spacing = 4,
    prefix = '●',
  },
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(                 
    vim.lsp.diagnostic.on_publish_diagnostics, {                                      
        -- Disable signs                                                                
        signs = false,                                                                  
    }                                                                                 
)


vim.api.nvim_create_autocmd('FileType', {
    pattern = 'rs',
    callback = function()
        vim.lsp.start({
            name = 'rust-analyzer',
            cmd = {'rust-analyzer'},
            root_dir = vim.fs.dirname(vim.fs.find({'Cargo.toml', 'Cargo.lock'}, { upward = true })[1]),
        })
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'sh',
    callback = function()
        vim.lsp.start({
            name = 'bash-language-server',
            cmd = { 'bash-language-server', 'start' },
        })
    end,
})
