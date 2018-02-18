sudo apt-get install zsh

#change zsh
chsh -s /usr/bin/zsh

#install oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

#install vim 8 
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

#remove vim 
#sudo apt remove vim
#sudo add-apt-repository --remove ppa:jonathonf/vim

# install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

curl -sLf https://spacevim.org/install.sh | bash

#install vim vundle 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git://github.com/tpope/vim-unimpaired.git ~/.vim/bundle/vim-unimpaired

# install YouCompleteMe
#sudo apt-get install build-essential cmake
sudo apt-get install build-essential cmake3
sudo apt-get install python-dev python3-dev
sudo apt-get install npm

npm install -g typescript

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --js-completer --java-completer


