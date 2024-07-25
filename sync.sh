#/bin/bash
#
#
# PS3="Select AUR helper: "  # Prompt for the select menu
#
# options=("Paru" "Yay" )  # Array of options
#
# select opt in "${options[@]}"
# do
#     case $opt in
#         "Paru")
#             ;;
#         "Yay")
#             echo "You chose Yay i havent implemented it"
#             exit -1
#             ;;
#         *)
#             echo "Invalid option $REPLY"  # Handle invalid input
#             exit -1
#             ;;
#     esac
# done

if ! command -v paru &> /dev/null
then
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    cd ..
    rm -rf paru
fi


echo "··································································";
echo ": ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┬┌┐┌┌─┐  ┌─┐┬─┐┌─┐┌┬┐  ┌─┐┌─┐┌─┐┌┬┐┌─┐┌┐┌   :";
echo ": ││││└─┐ │ ├─┤│  │  │││││ ┬  ├┤ ├┬┘│ ││││  ├─┘├─┤│  │││├─┤│││   :";
echo ": ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘┴┘└┘└─┘  └  ┴└─└─┘┴ ┴  ┴  ┴ ┴└─┘┴ ┴┴ ┴┘└┘   :";
echo "··································································";

sudo pacman -Sy - < ./install/pacman.txt --needed



echo "···················································";
echo ": ┌─┐┬  ┌─┐┌┐┌┬┌┐┌┌─┐  ┬ ┬┬┌┬┐┬ ┬  ┌─┐┌┬┐┌─┐┬ ┬   :";
echo ": │  │  │ │││││││││ ┬  ││││ │ ├─┤  └─┐ │ │ ││││   :";
echo ": └─┘┴─┘└─┘┘└┘┴┘└┘└─┘  └┴┘┴ ┴ ┴ ┴  └─┘ ┴ └─┘└┴┘   :";
echo "···················································";

stow .

echo "····························································";
echo ": ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┬┌┐┌┌─┐  ┌─┐┬─┐┌─┐┌┬┐  ┌─┐┌─┐┬─┐┬ ┬   :";
echo ": ││││└─┐ │ ├─┤│  │  │││││ ┬  ├┤ ├┬┘│ ││││  ├─┘├─┤├┬┘│ │   :";
echo ": ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘┴┘└┘└─┘  └  ┴└─└─┘┴ ┴  ┴  ┴ ┴┴└─└─┘   :";
echo "····························································";

paru -Sy - < ./install/paru.txt --needed



echo "··············································";
echo ": ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┬┌┐┌┌─┐  ┌┬┐┌┬┐┌─┐┌┐┌┬ ┬:";
echo ": ││││└─┐ │ ├─┤│  │  │││││ ┬   │││││├┤ ││││ │:";
echo ": ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘┴┘└┘└─┘  ─┴┘┴ ┴└─┘┘└┘└─┘:";
echo "··············································";


sudo make install -C ./install/dmenu-5.2/



echo "···························································";
echo ": ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┬┌┐┌┌─┐  ┌─┐┬ ┬   ┌┬┐┬ ┬   ┌─┐┌─┐┬ ┬┬:";
echo ": ││││└─┐ │ ├─┤│  │  │││││ ┬  │ │├─┤───│││└┬┘───┌─┘└─┐├─┤│:";
echo ": ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘┴┘└┘└─┘  └─┘┴ ┴   ┴ ┴ ┴    └─┘└─┘┴ ┴o:";
echo "···························································";


p10kpath=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "·································································";
echo ": ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┬┌┐┌┌─┐  ┌─┐┌─┐┬ ┬┌─┐┬─┐┬  ┌─┐┬  ┬┌─┐┬     :";
echo ": ││││└─┐ │ ├─┤│  │  │││││ ┬  ├─┘│ ││││├┤ ├┬┘│  ├┤ └┐┌┘├┤ │     :";
echo ": ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘┴┘└┘└─┘  ┴  └─┘└┴┘└─┘┴└─┴─┘└─┘ └┘ └─┘┴─┘   :";
echo "·································································";


if [ ! -d $p10kpath ];then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    echo ""
    echo "PowerLevel10K installed"
    echo ""
else
    echo "powerlevel10k folder already exists"
fi

echo "·············································";
echo ":  ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┬┌┐┌┌─┐  ┌─┐┌─┐┬ ┬    :";
echo ":  ││││└─┐ │ ├─┤│  │  │││││ ┬  ┌─┘└─┐├─┤    :";
echo ":  ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘┴┘└┘└─┘  └─┘└─┘┴ ┴    :";
echo ":┌─┐┬ ┬┌┬┐┌─┐┌─┐┬ ┬┌─┐┌─┐┌─┐┌─┐┌┬┐┬┌─┐┌┐┌┌─┐:";
echo ":├─┤│ │ │ │ │└─┐│ ││ ┬│ ┬├┤ └─┐ │ ││ ││││└─┐:";
echo ":┴ ┴└─┘ ┴ └─┘└─┘└─┘└─┘└─┘└─┘└─┘ ┴ ┴└─┘┘└┘└─┘:";
echo "·············································";

git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo ""

echo "····································································";
echo ": ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  ┬┌┐┌┌─┐  ┌─┐┌─┐┬ ┬  ┬ ┬┬┌─┐┬ ┬┬  ┬┌─┐┬ ┬┌┬┐┌─┐:";
echo ": ││││└─┐ │ ├─┤│  │  │││││ ┬  ┌─┘└─┐├─┤  ├─┤││ ┬├─┤│  ││ ┬├─┤ │ └─┐:";
echo ": ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘┴┘└┘└─┘  └─┘└─┘┴ ┴  ┴ ┴┴└─┘┴ ┴┴─┘┴└─┘┴ ┴ ┴ └─┘:";
echo "····································································";

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo ""
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

gsettings set org.cinnamon.desktop.default-applications.terminal exec kitty
