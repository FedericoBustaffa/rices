-- Options 
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')

o = vim.opt
o.encoding="UTF-8"
o.tabstop=4
o.shiftwidth=4
o.autoindent=true
o.smartindent=true
o.number=true
o.relativenumber=true
o.mouse="a"
o.hlsearch=true
o.incsearch=true
o.hidden=true
o.fdm="indent"
o.foldlevelstart=99
o.ignorecase=true
o.smartcase=true
o.splitbelow=true
o.splitright=true
o.completeopt={ "preview" }

-- Vimtex
vim.g.vimtex_view_method='zathura'
vim.g.vimtex_view_general_viewer='zathura'
-- vim.g.vimtex_view_general_options='--unique file:@pdf#src:@line@tex'

