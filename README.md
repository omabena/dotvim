Install vim dependencies for fedora:

    $ yum -y groupinstall 'Development Tools'
    $ yum -y install ruby perl-devel python-devel ruby-devel perl-ExtUtils-Embed ncurses-devel

Compile vim with ruby and python support:


    $ git clone https://github.com/vim/vim.git
    $ cd ~/vim
    $ ./configure --prefix=/usr/local --enable-multibyte  --with-tlib=ncurses --enable-pythoninterp --enable-rubyinterp --with-ruby-command=/usr/bin/ruby --with-features=huge
    $ make
    $ sudo make install 
    $ export PATH=/usr/local/bin:$PATH
    $ alias vi='/usr/local/bin/vim'


Configure Vim plugins and settings:

    $ git clone git://github.com/omabena/dotvim.git ~/.vim

Install Pathogen.vim:

    Download pathogen.vim in .vim/autoload

    $ mkdir .vim/autoload


Create symlinks:

    $ ln -s ~/dotfiles/vimrc ~/.vimrc


Install plugins as submodules: 

    $ cd ~/.vim
    $ mkdir ~/.vim/bundle
    $ git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
    $ git add .
    $ git commit -m "Install Fugitive.vim bundle as a submodule."

Installing your Vim environment on another machine:

    $ cd ~
    $ git clone http://github.com/username/dotvim.git ~/.vim
    $ ln -s ~/.vim/vimrc ~/.vimrc
    $ cd ~/.vim
    $ git submodule init
    $ git submodule update

Upgrading all bundled plugins:

    $ git submodule foreach git pull origin master


Compile Command-T plugin:

    $ cd ~/.vim/bundle/Command-T/ruby/command-t
    $ ruby extconf.rb 
    $ make
    $ sudo make install

    
    
