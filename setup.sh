echo "Installing Xcode Dependencies"
xcode-select --install 

echo "Installing Homebrew"
# should i instead check if it is installed?
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Git"
brew install git

echo "Config Git"
git config --global user.name "Mitchell Mark-George"

echo "Installing Zsh"
brew install zsh

echo "Setting Zsh as default"
chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Intalling Zsh Autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing Zsh Syntax Hilighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Install Powerlevel 10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# think about this

# should try and haave that automatically setup with .zshrc in dotfiles

# should I use a Brewfile instead?
packages=(
    python
    node
    go
    typescript
    # vim -> macvim installs vim
    neovim
    chezmoi 
    fzf
)

# chezmoi -> used to manage dotfiles
chezmoi init https://github.com/MitchellMarkGeorge/dotfiles.git

p10k configure 

source ~/.zshrc

echo "Installing packages"
brew install ${packages[@]}

apps=(
    appcleaner
    macvim
    kitty
    iterm2
    visual-studio-code
    zoom
    google-chrome
    rectangle
    notion
    spotify
    intellij-idea-ce
)

echo "Installing apps"
brew install --cask ${apps[@]}
