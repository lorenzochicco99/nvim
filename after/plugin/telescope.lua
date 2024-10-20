local builtin = require('telescope.builtin')

-- Leader+p+f searches for matching and closely matching file names based on your query in the current directory.
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
-- Ctrl+p does the same, but only includes git-tracked files, hence faster
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope git find files' })
-- Leader+p+s uses the bash Grep command, which searches inside every file for a matching correspondence  
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input('Grep > ') })
end)
