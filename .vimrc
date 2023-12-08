set nocompatible " 使用vim的键盘模式
filetype off

set number " 设置开启行号

" 设置支持中文编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 " 写入文件时的编码类型
set termencoding=utf-8                                   " 输出到终端的编码类型
set encoding=utf-8                                       " 其他地方的编码类型

" 突出显示当前行
set cursorline

" 突出显示当前列
" set cursorcolumn

" 显示括号匹配
set showmatch

" 设置缩进
set tabstop=4    " 设置tab长度为4空格
set shiftwidth=4 " 设置自动缩进长度为4空格
set autoindent   " 继承前一行的缩进方式

" 设置粘贴模式
set paste

" 显示空格和tab键
set listchars=tab:>-,trail:-

" 显示状态栏和光标当前位置
set laststatus=2 " 总是显示状态栏
set ruler        " 显示光标当前位置


"设置Vundle的运行和初始化路径
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"让Vundle来管理vundle
Plugin 'git@github.com:VundleVim/Vundle.vim.git'

"保持Plugin命令在vundle#end()之间

" 在GitHub仓库中的插件
Plugin 'git@github.com:tpope/vim-fugitive.git'

Plugin 'git://github.com/yianwillis/vimcdoc.git'
" plugin from  http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
"
" plugin from git-github
" Plugin 'git://git.wincent.com/command-t.git
"
" plugin from local machine
" Plugin 'file:///home/gmark/path/plugin
"
" avoid a naming conflict
" Plugin 'ascenator/L9', {'name', 'newL9'}

" all plugin should write before this command-line
call vundle#end()

filetype plugin indent on

" plugin brief help
"  :PluginList
"  :PluginInstall
"  :PluginSearch name
"  :PluginClean
