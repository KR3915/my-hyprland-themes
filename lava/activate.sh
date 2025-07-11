#check if script is ran by root
if [ "$EUID" -eq 0 ]; then
  echo -e "\e[31mChyba: script wont work if ran as root! quiting...\e[0m"
  exit 1
fi
#set the Hyprland theme
if [ -d "$HOME/.config/hypr" ]; then
  cp hyprland/hyprland.conf "$HOME/.config/hypr/"
  echo -e "\e[32mhyprland.conf set up\e[0m"
else
  echo -e "\e[31mDirectory ~/.config/hypr doesn't exist!\e[0m"
fi

#set the Neofetch theme
if [ -d "$HOME/.config/neofetch" ]; then
  cp neofetch/config.conf "$HOME/.config/neofetch/"
  echo -e "\e[32mneofetch config set up\e[0m"
else
  echo -e "\e[31mDirectory ~/.config/neofetch doesn't exist! Try installing neofetch.\e[0m"
fi

