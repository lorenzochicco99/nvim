-- General configuration and basic remapping
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Note that this is not really necessary as we are using nvim-tree as a file explorer
vim.o.number = true          -- Show absolute line numbers
vim.o.relativenumber = true  -- Show relative line numbers
vim.opt.tabstop = 4      -- Number of visual spaces per tab
vim.opt.shiftwidth = 4   -- Number of spaces to use for auto-indenting
