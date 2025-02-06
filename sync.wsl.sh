echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[33m                                       INSTALL PPAS                                       \e[0m"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch -y
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[33m                                       UPDATE APT                                         \e[0m"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
sudo apt update
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[33m                                       INSTALL PACKAGES                                   \e[0m"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
xargs -a ./install/apt.txt sudo apt install -y
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[33m                                       INSTALL OMZSH                                      \e[0m"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[33m                                       STOW                                               \e[0m"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
stow .
echo "\e[32m   \e[0m Stow"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[33m                                       TMUX AND ZSH PLUGINS                               \e[0m"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.0 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[33m                                       INSTALL NVM                                        \e[0m"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[33m                                       INSTALL BOB                                        \e[0m"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
rustup default stable
cargo install --git https://github.com/MordechaiHadad/bob.git
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[33m                                       DIRECTORIES                                        \e[0m"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
mkdir -p "$HOME/Vaults/Personal Vault"
mkdir -p "$HOME/Vaults/personal"
echo "\e[32m   \e[0m Obsidian Vaults"
echo ""
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[33m                                       LAZYGIT                                            \e[0m"
echo "\e[33m----------------------------------------------------------------------------------------- \e[0m"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/ 
rm -rf lazygit
rm lazygit.tar.gz
echo "\e[32m----------------------------------------------------------------------------------------- \e[0m"
echo "\e[32m                                       DONE                                               \e[0m"
echo "\e[32m----------------------------------------------------------------------------------------- \e[0m"
