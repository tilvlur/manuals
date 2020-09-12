"ПЛАГИНЫ 'vim-plug'
call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'morhetz/gruvbox' "Цветовая схема gruvbox
    Plug 'jiangmiao/auto-pairs' "Вторые скобки
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'easymotion/vim-easymotion' "Запуск по Leader+s
call plug#end()

"НАСТРОЙКИ
    set nocompatible "Отключение обратной совместимости с Vi
    set mouse=n "Поддержка мыши (Normal mode and Terminal modes)
    set wildmenu "Доп. меню по Tab в коммандной строке
    set showcmd "Отображение вводимых команд
    set encoding=UTF-8 "Кодировка UTF-8 по умолчанию
    set termguicolors "24-bit color in xterm-compatible terminals support
    syntax enable "Подсветка синтаксиса
    set background=dark "Тёмное оформление
    colorscheme gruvbox "Цветовая схема
    set number "Нyмерация строк
    set cursorline "Подсветка строки с курсором
"Режимы отображение курсора
    let &t_SI.="\e[5 q" "SI = режим вставки (5 - мигающая черта)
    let &t_SR.="\e[3 q" "SR = режим замены (3 - мигающее подчёркивание)
    let &t_EI.="\e[1 q" "EI = нормальный режим (1 - мигающий блок)
"Поиск
    set hlsearch "Подсветка поиска
    set incsearch "Инкрементальный поиск
    set ignorecase "Поиск с без заглавных не чувствителен к регистру
    set smartcase "Поиск с заглавными чувствителен к регистру
"Понижение задержки ввода Esc
    set timeout
    set ttimeout
    set timeoutlen=3000
    set ttimeoutlen=50
"Включение переносов, разрывов строк
    set wrap
    set linebreak
"Отключение .swp и ~ (резервных) файлов
    set nobackup
    set noswapfile
"Поддержка кириллицы
    set keymap=russian-jcukenwin
    set iminsert=0 "Ввод на английском на старте (start > i)
    set imsearch=0 "Поиск на английском на старте (start > /)
    "Смена цвета курсора (в GNOME Terminal не работает)
    highlight lCursor guifg=NONE guibg=Cyan
"Python
    set tabstop=4 "TAB = 4 пробела
    set shiftwidth=4 ">> << = 4 пробела
    set smarttab "Backspase = shiftwidth
    set expandtab "Табы состоят из пробелов
    set autoindent "Копирует отступ с предыдущей строки
    set smartindent "Автоотступы для C-подобных языков
    let python_highlight_all = 1 "Enable all Python syntax highlighting features
    filetype plugin indent on "Отступы в зависимотси от типа файла
    "Перед сохранением вырезаем пробелы на концах (только в .py файлах)
    autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
    "В .py файлах включаем умные отступы после ключевых слов
    autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
    filetype indent on
    let g:ycm_python_binary_path = 'python'
    let g:indent_guides_start_level = 2
    let g:indent_guides_auto_colors = 1
    let g:indentLine_leadingSpaceChar = '·'
    let g:indentLine_leadingSpaceEnabled = 1
"Airline, Powerline
    let g:airline_powerline_fonts = 1 "Поддержка Powerline-шрифтов
    let g:airline#extensions#keymap#enabled = 0 "Не показывать Keymap
    "Зона положения курсора
    let g:airline_section_z = "%l/%#__accent_bold#%L%{g:airline_symbols.maxlinenr}%#__restore__#:%v"
    "Стрелки, иконки и т.п.
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    "unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.maxlinenr = '㏑'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.spell = 'Ꞩ'
    let g:airline_symbols.notexists = 'Ɇ'
    let g:airline_symbols.whitespace = 'Ξ'
    "powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.dirty='⚡'

"MAPPINGS
"Вкл./Выкл. NERDTree: Ctrl+n
    map <C-n> :NERDTreeToggle<CR>
"Смена раскладки на Ctrl-l вместо Ctrl-^
    inoremap <C-l> <C-^>
"For easymotion plugin
    let g:mapleader=',' "Замена Leaderkey на ','
    map <Leader> <Plug>(easymotion-prefix)
