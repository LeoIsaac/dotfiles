syntax enable

set whichwrap=b,s,<,>,[,]

"表示
set cursorline "現在の行の強調表示
set laststatus=2 "ステータス行を常に表示
set showmatch "対応する括弧の強調表示
set wildmenu "補完
set wildmode=longest:full,full "補完を良い感じに

"インデント
set expandtab "タブ入力を空白入力にする
set tabstop=2 "タブ文字が占める幅
set shiftwidth=2 "自動インデントでズレる幅
set softtabstop=2 "タブキーやバックスペースで移動する幅
set autoindent "前のインデントを継続する
set smartindent "末尾に合わせてインデントを増減する

set directory=~/.vim/tmp "swpファイルの保存先を変更
set autoread "更新されたら読み込み直す
set mouse=a "マウス操作を可能にする

"netrw
let g:netrw_liststyle=3 "常にtree
let g:netrw_altv=1 "vで右に開く
let g:metrw_alto=1 "oで下に開く

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

