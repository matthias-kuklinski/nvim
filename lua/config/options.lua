local opt = vim.opt

opt.relativenumber = true -- Show relative line numbers (useful for navigating with j/k).
opt.number = true -- Show absolute line number on the current line.

-- Command and mode display
opt.showcmd = false -- Do not show the command in the bottom right corner (since it can be redundant).
opt.showmode = false -- Do not show the mode (insert/normal) in the bottom left corner (useful if using a statusline).

-- Tabs and indentation
opt.expandtab = true -- Convert tabs to spaces.
opt.tabstop = 2 -- Visually represent a tab as 2 spaces.
opt.softtabstop = 2 -- Insert 2 spaces when pressing Tab.
opt.shiftwidth = 2 -- Use 2 spaces for each step of indentation.
opt.autoindent = true -- Maintain the same indent level on the new line.

-- Appearance and formatting
opt.cursorline = true -- Highlight the line with the cursor.
opt.fileencoding = "utf-8" -- Set file encoding to UTF-8.
opt.list = true -- Show invisible characters (e.g., spaces, tabs).
opt.termguicolors = true -- Enable 24-bit RGB colors in the terminal.

-- Text wrapping and UI
opt.wrap = false -- Do not wrap long lines (keep them on one line).
opt.signcolumn = "yes" -- Always show the sign column (prevents text shifting when diagnostics appear).

-- Searching
opt.hlsearch = true -- Highlight search results.
opt.ignorecase = true -- Ignore case when searching...
opt.smartcase = true -- ...unless the search includes uppercase letters.

-- Travel back in time ;)
opt.undofile = true
opt.undolevels = 10000
