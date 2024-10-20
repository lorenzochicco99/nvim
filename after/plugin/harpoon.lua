local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
-- leader+a harpoons a file 
vim.keymap.set("n", "<leader>a", mark.add_file)
-- Ctrl+e diplays the list of harpooned files
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
-- Ctrl+h/j/k/l/ò/à to navigate into harpooned files 1-6
vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
vim.keymap.set("n", "<C-ò>", function() ui.nav_file(4) end)
vim.keymap.set("n", "<C-à>", function() ui.nav_file(4) end)

