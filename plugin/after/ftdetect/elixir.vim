" Elixir
if executable("elixir")
  autocmd BufRead,BufNewFile *.ex map <F5> :% w !elixir %<CR>
  autocmd BufRead,BufNewFile *.exs map <F5> :% w !elixir %<CR>
else
  autocmd BufRead,BufNewFile *.ex map <F5> :echo "you need to install Elixir first!"<CR>
  autocmd BufRead,BufNewFile *.exs map <F5> :echo "you need to install Elixir first!"<CR>
endif
