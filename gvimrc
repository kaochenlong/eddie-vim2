set guioptions=ce
set antialias
set linespace=2
colorscheme solarized_dark

if has("gui_macvim")
  set guifont=Inconsolata\ for\ Powerline:h18
elseif has("gui_gtk")
  set guifont=Monospace\ 14
else
  set guifont=Monaco:h18
end

if has("gui_running")
  set transparency=0

  " move a line of text using ALT+[jk] or Comamnd+[jk] on mac
  nmap <D-j> mz:m+<cr>`z
  nmap <D-k> mz:m-2<cr>`z
  vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

  " disable default menu hot key
  macmenu &File.New\ Window key=<nop>
  macmenu &File.Close key=<nop>

  " remap cmd + w to close tab
  map <D-w> :tabclose<CR>

  " remap cmd + n to new tab
  map <D-n> :tabnew<CR>

  " map cmd + enter to switch to full screen
  map <D-Enter> :set invfu<CR>
endif
