" This must be first, because it changes other options as a side effect. "
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on "
syntax on 

" switch off the beeping on scrool
set belloff=all 

execute pathogen#infect()

" Enable file type detection and do language-dependent indenting. "
filetype plugin indent on
" Show line numbers set number "

" Allow hidden buffers, don't limit to 1 file per window/split "
set hidden

"Custom setting"
syntax enable
set hidden
set history=100
set number

"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype on
filetype plugin on

"Настройки табов 
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
"Автоотступ
set autoindent
"Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1

"Настройка omnicomletion 
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
imap <c-r>=InsertTabWrapper()"Показываем все полезные опции автокомплита сразу
set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t

"Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" Копи/паст по Ctrl+C/Ctrl+V
vmap <C-C> "+yi
imap <C-V> "+gPi
set nu "Включаем нумерацию строк
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
"Вырубаем черточки на табах
set showtabline=0
"Колоночка, чтобы показывать плюсики для скрытия блоков кода:
set foldcolumn=1

"Переносим на другую строчку, разрываем строки
set wrap
set linebreak

"Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251 " Возможные кодировки файлов, если файл не в unicode кодировке, то будет использоваться cp1251
  let g:user_emmet_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \}

