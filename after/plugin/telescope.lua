local builtin = require('telescope.builtin')

-- Leader+p+f searches for matching and closely matching file names based on your query in the current directory.
-- f -> find 
vim.keymap.set('n', '<leader>pf', builtin.find_files)
-- Ctrl+p does the same, but only includes git-tracked files, hence faster
-- gf -> git find 
vim.keymap.set('n', '<leader>pgf', builtin.git_files)

-- Leader+p+s uses the bash Grep command, which searches inside every file for a matching correspondence  
-- s -> search
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input('Grep > ') })
end)

-- Leader+p+g+s uses grep in all git-tracked files
-- gs -> git search
vim.keymap.set('n', '<leader>pgs', function()
    builtin.grep_string({
        search = vim.fn.input("Grep Git Files > "),
        search_dirs = vim.fn.systemlist("git ls-files"),
    })
end)
