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

#install vim vundle 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
