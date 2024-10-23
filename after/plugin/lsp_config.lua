require("mason").setup()
-- Installs the list of LSPs, to know the name of lsps, run :Mason and look for them in the second column. 
require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls", "dockerls", "bashls", "clangd",
	"pylsp", "pyright", "docker_compose_language_service"}
})
require("lspconfig").lua_ls.setup {}
require("lspconfig").dockerls.setup {}
require("lspconfig").bashls.setup {}
require("lspconfig").docker_compose_language_service.setup {}

require('lspconfig').pyright.setup{
  settings = {
    python = {
      pythonPath = "/home/lorenzo/.config/nvim/lspvenv/bin/python3",  -- Adjust this to point to your venv
    },
  },
}

require('lspconfig').clangd.setup({
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
