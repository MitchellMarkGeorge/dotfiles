" will only delay if ther is an impap <space> mapping
nmap <Space> <Nop>
let mapleader = " "
let maplocalleader = " "
" let mapleader = "\<Space>" 

" adds trailing ; to the end of a line;
imap ;; <Esc>A;<Esc>
" usefull for python
" imap :: <Esc>A:<Esc>

inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>

nnoremap <C-j> <C-w>j 
nnoremap <C-h> <C-w>h 
nnoremap <C-k> <C-w>k 
nnoremap <C-l> <C-w>l 


nnoremap <leader>r :source $MYVIMRC<cr>
" next buffer
nnoremap <silent> L :BufferLineCycleNext<CR> 

" previous buffer
nnoremap <silent> H :BufferLineCyclePrev<CR> 

" close buffer 
nnoremap <silent> <leader>b :bdelete<CR> 

nnoremap <silent> <leader>1 :BufferLineGoToBuffer 1<CR> 
nnoremap <silent> <leader>2 :BufferLineGoToBuffer 2<CR> 
nnoremap <silent> <leader>3 :BufferLineGoToBuffer 3<CR> 
nnoremap <silent> <leader>4 :BufferLineGoToBuffer 4<CR>
nnoremap <silent> <leader>5 :BufferLineGoToBuffer 5<CR> 

nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>

"Hop.nvim -> basically EasyMotion
"is this the best way to use this?
nnoremap <leader>w <cmd>HopWord<cr>
nnoremap <leader>l <cmd>HopLine<cr>
nnoremap <leader>c <cmd>HopChar2<cr>
nnoremap <leader>f <cmd>HopWordCurrentLineAC<cr>
nnoremap <leader>F <cmd>HopWordCurrentLineBC<cr>

"Nvim Tree
" toggle tree
nnoremap <silent> <leader>tt :NvimTreeToggle<CR> 
"refresh file tree (tree refresh)
nnoremap <silent> <leader>tr :NvimTreeRefresh<CR> 

"Telescope
nnoremap <silent> <leader>ff :Telescope find_files<cr>

nnoremap <silent> <leader>fb :Telescope buffers<cr>

"remove search hilighting (after search)
nnoremap <silent> <leader>h :noh<cr>

" only writes to the file if it has been modified
nnoremap <leader>s :update<cr>

" vim can't realy reacognize cntrl + arrow leys so used arrow keys
nnoremap <S-Up> :resize -2<cr>
nnoremap <S-Down> :resize +2<cr>
nnoremap <S-Left> :vertical resize -2<cr>
nnoremap <S-Right> :vertical resize +2<cr>
" useful for closing splits
nnoremap <leader>q :q!<cr>

nnoremap <silent> <leader>o :SymbolsOutline<cr>

