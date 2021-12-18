" next buffer
nnoremap <silent> <leader>] :BufferNext<CR> 

" previous buffer (chose v as it is is before b\more ergonomic)
nnoremap <silent> <leader>[ :BufferPrevious<CR> 

" close buffer
nnoremap <silent> <leader>bb :BufferClose<CR> 
" think about this one
nnoremap <silent> <leader>bc :BufferCloseAllButCurrent<CR> 

nnoremap <silent> <leader>b1 :BufferGoto 1<CR> 
nnoremap <silent> <leader>b2 :BufferGoto 2<CR> 
nnoremap <silent> <leader>b3 :BufferGoto 3<CR> 
nnoremap <silent> <leader>b4 :BufferGoto 4<CR>
nnoremap <silent> <leader>b5 :BufferGoto 5<CR> 

nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>

"Hop.nvim -> basically EasyMotion
"is this the best way to use this?
nnoremap <leader>hw <cmd>HopWord<cr>
nnoremap <leader>hl <cmd>HopLine<cr>
nnoremap <leader>hc <cmd>HopChar2<cr>
nnoremap <leader>hp <cmd>HopPattern<cr>

"Nvim Tree
" toggle tree
nnoremap <silent> <leader>tt :NvimTreeToggle<CR> 
"refresh file tree (tree refresh)
nnoremap <silent> <leader>tr :NvimTreeRefresh<CR> 

"Telescope
nnoremap <silent> <leader>ff :Telescope find_files<cr>

nnoremap <silent> <leader>fb :Telescope buffers<cr>

"remove search hilighting (after search)
nnoremap <silent> <leader>nh :noh<cr>

" only writes to the file if it has been modified
nnoremap <leader>s :update<cr>

