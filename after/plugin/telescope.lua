local builtin = require('telescope.builtin')

-- Leader+p+f searches for matching and closely matching file names based on your query in the current directory.
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
-- Ctrl+p does the same, but only includes git-tracked files, hence faster
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = 'Telescope git find files' })

-- Leader+p+s uses the bash Grep command, which searches inside every file for a matching correspondence  
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input('Grep > ') })
end)
-- TODO
-- New function to grep in all git-tracked files automatically
vim.keymap.set('n', '<leader>pgs', function()
    local search_query = vim.fn.input('Grep in Git files > ')
    if search_query ~= '' then
        -- Use grep_string to search across all git-tracked files
        builtin.grep_string({
            search = search_query,
            cwd = vim.fn.getcwd(),  -- Set the current working directory to the Git root
            additional_args = function()
                return { '--cached', '--no-heading', '--with-filename', '--line-number' }
            end,
        })
    end
end, { desc = 'Grep in all Git-tracked files' })
