#!/bin/bash

## Colors
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
cyan=$(tput setaf 6)
white=$(tput setaf 7)

DOWNLOAD_DIRECTORY=~/.config/pomodoro-cli

function install_with_sound() {
  echo "${green}[+]${white} Installing with sound notifications"
  if [ -e $DOWNLOAD_DIRECTORY/sound.wav ]
  then
      echo "${yellow}[-]${white}Sound already present"
  else
	  if [[ ! -d $DOWNLOAD_DIRECTORY ]]; then
		  mkdir -p $DOWNLOAD_DIRECTORY 
	  fi
      cp ./sound.wav $DOWNLOAD_DIRECTORY  
      echo "${green}[+]${white} Added sound"
  fi
  echo "${green}[+]${white} Adding pomodoro-cli executable to your bin folder"
  echo "${cyan}[~]${white} ${blue}To do that this script will be requiring your user password${green}"
  sudo cp ./pomodoro-sound-cli.sh /usr/local/bin/pd
}

function install_without_sound() {
  echo "Installing without sound notifications"
  echo "${green}[+]${white} Adding pomodoro-cli executable to your bin folder"
  echo "${cyan}[~]${white} ${blue}To do that this script will be requiring your user password${green}"
  sudo cp ./pomodoro-cli.sh /usr/local/bin/pd
}

while true; do
  read -rp "${cyan}[~]${white} Install with sound notifications? (y/n): " yn
  case $yn in
    [Yy]* )
      install_with_sound
      break;;
    [Nn]* )
      install_without_sound
      break;;
    * ) echo "Please answer 'yes' or 'no'.";;
    esac
done

echo "${cyan}[==] pomodoro-cli installed!"
echo "
${white}Usage: pd [options] [focus] [break] [long_break] [breaks_until_long]"
echo "    options            -h: display help message"
echo "    focus              Minutes of focus until break      | Default = 25"
echo "    break              Minutes of break until focus      | Default = 5"
echo "    long_break         Minutes of long break until focus | Default = 15"
echo "    breaks_until_long  Number of breaks until long break | Default = 4"
