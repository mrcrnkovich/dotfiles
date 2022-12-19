-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Utilities
    use('tpope/vim-fugitive')
    use {'junegunn/fzf', cmd = 'fzf#install()' }
    use('junegunn/fzf.vim')

    -- Go
    use('fatih/vim-go')

      -- Appearance Plugins
    use('itchyny/lightline.vim')
    use('morhetz/gruvbox')

    use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
      },
    }

end)
