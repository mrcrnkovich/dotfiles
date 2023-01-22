-- Vim Remaps

-- Quick window switching
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

--swap windows
vim.keymap.set('n', '<C-x>', '<C-w>x')

--Terminal Setup
vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]])
vim.keymap.set('t', '<C-v><ESC>', '<ESC>')

--Quick Path completion
vim.keymap.set('i', '<C-l>', '<C-x><C-l>')
vim.keymap.set('i', '<C-f>', '<C-x><C-f>')
vim.keymap.set('i', '<C-Space>', '<C-x><C-p>')
vim.keymap.set('i', '<C-Enter>', '<C-x><C-o>')

-- Use TAB to cycle through matches
vim.keymap.set( 'i', '<TAB>',
    function()
      return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
    end,
    { expr = true }
)

vim.keymap.set( 'i', '<S-TAB>',
    function()
      return vim.fn.pumvisible() == 1 and "<C-p>" or "<S-TAB>"
    end,
    { expr = true }
)

--Set Open Netrw
vim.keymap.set('n', '<Leader>t', vim.cmd.Explore)
vim.keymap.set('n', '<Leader>T', vim.cmd.Vexplore)

-- Clear Search Highlight
vim.keymap.set('', '<leader><space>', ':let @/=""<CR>')

--window splitting
vim.keymap.set('n', '<Leader>v', vim.cmd.vsplit )
vim.keymap.set('n', '<Leader>-', vim.cmd.split )

--Set Quick Access menus
vim.keymap.set('n', '<Leader>r', vim.cmd.reg)
vim.keymap.set('n', '<Leader>b', vim.cmd.buffers)
vim.keymap.set('n', '<Leader>m', vim.cmd.marks)

--Quickfix List
vim.keymap.set('n', '<Leader>q', vim.cmd.copen)
vim.keymap.set('n', '[q',        vim.cmd.cnext)
vim.keymap.set('n', ']q',        vim.cmd.cprev)

--FZF Quick Access
vim.keymap.set('n', '<Leader>f', vim.cmd.GFiles)
vim.keymap.set('n', '<Leader>F', vim.cmd.Files)
vim.keymap.set('n', '<Leader>s', vim.cmd.Rg)
