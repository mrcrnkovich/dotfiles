vim.g.lightline = {
    ['colorscheme'] = 'gruvbox',
    ['active'] = {
        ['left'] = {
            { 'mode', 'paste', },
            { 'git-branch', },
            { 'readonly', 'filename', 'modified', },
        },
        ['right'] = {
            { 'lineinfo', },
            { 'percent', },
            { 'fileformat', 'fileencoding', 'filetype', },
        },
    },
    ['component-function'] = {
        ['git-branch'] = FugitiveHead,
    },
}
