require("mason").setup()
-- Installs the list of LSPs, to know the name of lsps, run :Mason and look for them in the second column. 
require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls", "dockerls", "bashls", "clangd",
	"pylsp", "pyright", "docker_compose_language_service"}
})

-- Define 'on_attach' function with LSP key mappings
local on_attach = function(_, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- Key mappings for LSP features
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)             -- Hover docs
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts) -- Signature help
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)        -- Go to definition
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)        -- Show references
  vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, opts)   -- Go to type definition
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)       -- Go to declaration
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)    -- Go to implementation
end



require("lspconfig").lua_ls.setup {}
require("lspconfig").dockerls.setup {}
require("lspconfig").bashls.setup {}
require("lspconfig").docker_compose_language_service.setup {}

require('lspconfig').pyright.setup{
  on_attach = on_attach,
  settings = {
    python = {
      pythonPath = "/home/lorenzo/.config/nvim/lspvenv/bin/python3",  -- Adjust this to point to your venv
    },
  },
}

require('lspconfig').clangd.setup({
  on_attach = on_attach,
  cmd = { 
    "clangd",
    "--background-index",
    "--compile-commands-dir=.",  -- Changed from 'build' to current directory
    -- Changed the format of compile args
    "--query-driver=/usr/bin/gcc", -- Allow clangd to query GCC for include paths
  },
  root_dir = function()
    return vim.fn.getcwd()
  end,
  init_options = {
    compilationDatabasePath = ".",
    fallbackFlags = {
      "-I/usr/lib/x86_64-linux-gnu/openmpi/include",
      "-I/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi"
    }
  }
})
