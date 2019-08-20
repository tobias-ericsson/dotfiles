sudo apt-get -y install curl zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "changing shell with chsh -s $(which zsh)"
which zsh
sudo chsh -s $(which zsh)