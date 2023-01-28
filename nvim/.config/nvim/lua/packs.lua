-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- packer itself
  use 'gruvbox-community/gruvbox' -- best colorscheme
  use 'norcalli/nvim-colorizer.lua' -- display colors of colorcodes
  use 'mbbill/undotree' -- shows tree of last changes
  use 'tpope/vim-commentary' -- gc(c) to (un)comment
  use 'vim-airline/vim-airline' -- cool statusline
  use 'preservim/nerdtree' -- file tree
  use 'junegunn/fzf' -- fzf
  use 'junegunn/fzf.vim' -- fzf

end)
