dotvim
======

Install
-------

```
cd ~
git clone https://github.com/mpitt/dotvim.git .vim
git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
ln -s .vim/vimrc .vimrc
# ~/.tmp is needed for backup, alternatives: 
# ~/.vim-tmp, ~/tmp, /var/tmp, /tmp
mkdir .tmp
vim -u .vim/plugins.vim +PluginInstall +q
```
