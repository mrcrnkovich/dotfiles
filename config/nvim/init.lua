
require('mrcrnkovich.set')
require('mrcrnkovich.remap')
require('mrcrnkovich.packer')

-- require('lspconfig').pylsp.setup{ }
-- require('lspconfig').gopls.setup{ 
--    cmd = { "/home/mike/go/bin/gopls" }    
--}
-- use omni completion provided by lsp
-- autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
-- autocmd FileType go setlocal omnifunc=go#complete#Complete

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local Format = augroup('Format', {})

autocmd('BufWrite', {
    group   = Format,
    pattern = '*.go',
    command = [[:GoFmt]],
})

local TestCompile = augroup('TestCompile', {})

--default
autocmd( 'FileType' , {
    group = TestCompile,
    pattern = '*',
    callback = function()
        vim.keymap.set('n', '<Leader>c', ':cexpr make|copen')
    end,
})

--specifc overrides
autocmd( 'FileType' , {
    group = TestCompile,
    pattern = 'go',
    callback = function()
        vim.keymap.set('n', '<Leader>c', ':GoTest<CR>')
    end,
})

autocmd( 'FileType' , {
    group = TestCompile,
    pattern = 'perl',
    callback = function()
        vim.keymap.set('n', '<Leader>c', ':!perl -c %<CR>')
    end,
})


function Sqlite(opts)
    print(opts.args)
    local results = io.popen('sqlite3 --table /home/mike/.local/share/notescript/tasks.db "select * from tasks;"')
    for line in results:lines() do
        print(line)
    end
end

vim.api.nvim_create_user_command(
    'Sql',
    Sqlite,
    { nargs = 1 }
)

