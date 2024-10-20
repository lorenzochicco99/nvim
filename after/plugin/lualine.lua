-- lualine is the cool bar above the bottom line. lualine displays useful information about the file you are editing.
-- It is extremely customizable, I just want it to look coherent with the tokyonight theme. 
require('lualine').setup {
    options = {
        icons_enabled = true,  -- Enable icons
        theme = 'tokyonight',     -- Set your preferred theme
        component_separators = { left = '', right = '' },  -- Set component separators
        section_separators = { left = '', right = '' },    -- Set section separators
        disabled_filetypes = { "neo-tree", "terminal" },    -- Disable for specific file types
    },
    sections = {
        lualine_a = { 'mode' },      -- First section: display current mode
        lualine_b = { 'branch' },    -- Second section: display current branch
        lualine_c = { 'filename' },   -- Third section: display filename
        lualine_x = { 'filetype' },   -- Fourth section: display file type
        lualine_y = { 'location' },    -- Fifth section: display cursor position
        lualine_z = { 'progress' },    -- Sixth section: display progress
    },
    tabline = {},
    extensions = { 'fugitive' },  -- Add any extensions you want to use
}
