#------SHELL----------
sudo apt-get upgrade && sudo apt-get update

#--------Programs----
# install apt-get
sudo apt-get install python3-venv
sudo apt-get install python3-pip
sudo apt-get install git
sudo apt-get install tree
sudo apt-get install tldr  

# install pip
pip3 install black

#------ZSH----------
# install zsh
sudo apt-get install zsh

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh command (zsh-z)
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

# install zsh autosuggestions (zsh-autosuggestions)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh syntax highlighting (zsh-syntax-highlighting) LAST!
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#------NEO VIM------

# install neovim
sudo apt install neovim

# vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# get config
wget -O .config/nvim/init.vim https://raw.githubusercontent.com/duarteocarmo/dotfiles/master/.config/nvim/init.vim

#--------TMUX------

# tmux
cd ~ && wget https://raw.githubusercontent.com/duarteocarmo/dotfiles/master/.tmux.conf


# add git configuration
