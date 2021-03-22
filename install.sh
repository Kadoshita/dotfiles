#!/bin/zsh

source .constants
mv .zshrc.sample .zshrc

ln -s $(pwd)/.zshrc $HOME/.zshrc

echo "export PATH=\$PATH:$(pwd)/bin" >> ~/.zshrc
export PATH=$PATH:$(pwd)/bin

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
ln -s $(pwd)/.p10k.zsh $HOME/.p10k.zsh

wget -O /tmp/nanorc.zip https://github.com/scopatz/nanorc/archive/master.zip
mkdir -p ~/.nano/
cd ~/.nano/ || exit
unzip -o "/tmp/nanorc.zip"
mv nanorc-master/* ./
rm -rf nanorc-master
rm /tmp/nanorc.zip
ln -s $(pwd)/.nanorc $HOME/.nanorc

mv .gitconfig.sample .gitconfig
git config --global user.name kadoshita
git config --global user.email sublimer.me@gmail.com
ln -s $(pwd)/.gitconfig $HOME/.gitconfig

exec zsh -l
