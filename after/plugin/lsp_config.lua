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

require'lspconfig'.clangd.setup{
  cmd = {
    "clangd",
    "--background-index",               -- To speed up file indexing
    "--clang-tidy",                     -- Use clang-tidy for code diagnostics
    "--compile-commands-dir=build",     -- Optional, if you're using CMake or a build directory
	-- Add more compile-args based on which packages are you using in C
    "--compile-args=-I/usr/lib/x86_64-linux-gnu/openmpi/include",  -- MPI include directory
    "--compile-args=/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi",  -- 2nd MPI include directory
  },
  settings = {
    clangd = {
      compilationDatabasePath = "build",  -- Optional: Path to your build directory if you're using CMake
    },
  },
}
