#!/bin/zsh
echo "[zsh]"

# Install oh-my-zsh.
[ -d ~/.oh-my-zsh.old ] && echo "Remove ~/.oh-my-zsh.old" && rm -rf ~/.oh-my-zsh.old
[ -d ~/.oh-my-zsh ] && echo "Original directory moved to ~/.oh-my-zsh.old" && mv ~/.oh-my-zsh ~/.oh-my-zsh.old
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Link .zshrc file.
if [ -f ~/.zshrc ]
then
    mv ~/.zshrc ~/.zshrc.old
    echo "Old ~/.zshrc file has been moved to ~/.zshrc.old"
fi
ln -s `pwd`/zsh/zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Already zshrc file includes following plugins.
#echo "Add"
#echo "zsh-autosuggestions"
#echo "zsh-syntax-highlighting"
#echo "to ~/.zshrc plugin."

# Install zsh theme: powerlevel10k.
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
