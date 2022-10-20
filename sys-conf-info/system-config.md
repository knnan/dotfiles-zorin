# System configuration

## packages to install

zsh
oh my zsh
zsh plugins
	* fzf-tab
	* zsh-autosuggestions
nvm
git
curl
wget
curlie
cheat.sh
htop
ksysguard
nvim
dbeaver
vscode
powerline fonts
spaceship theme
batcat
ripgrep
ranger
fdfind
xclip
vlc
indicator-stickynotes
Bitwarden
spotify

1. git , curl , wget ,zsh

   ```sh
   sudo apt install git curl wget zsh
   ```

2. oh-my-zsh

   ```bash
   #make sure to check for new version of the command at the following url
   #https://github.com/ohmyzsh/ohmyzsh
   
   
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   
   
   
   ```

3. powerlevel9k

   ```sh
   git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
   
   ```

4. powerline and powerline-fonts

   ```bash
   sudo apt install powerline fonts-powerline
   ```

5. Install Menlo for Powerline font

   ```bash
   git clone https://github.com/abertsch/Menlo-for-Powerline.git
   cd Menlo-for-Powerline
   sudo mv "Menlo for Powerline.ttf" /usr/share/fonts
   sudo fc-cache -vf /usr/share/fonts/
   rm -rf Menlo-for-Powerline
   ```

6. zsh-autosuggesions ans zsh-syntax-highlighting

   ```bash
   
   #zsh-syntax-highlighting
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting\
   
   #zsh-autosuggestions
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions\
   
   ```

7. sublime-text and sublime-merge

   ```bash
    
      wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
      sudo apt-get install apt-transport-https
      echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee       /etc/apt/sources.list.d/sublime-text.list
      sudo apt-get update
      sudo apt-get install sublime-text
      sudo apt-get install sublime-merge
   ```

8. fsearch

    ```bash
    sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily\
    sudo apt install fsearch
    ```

9. Build-essentials

    ```bash
    sudo apt-get install build-essential
    ```

10. python3

    ```bash

    sudo apt install python3
    sudo apt install python3-pip

    ```

11. libinput-gestures

    ```bash
    sudo gpasswd -a $USER input
    #After executing the above command, log out of your session completely, and then log back in to assign this group (or just reboot).
    
    sudo apt install xdotool wmctrl
    sudo apt install libinput-tools
    git clone https://github.com/bulletmark/libinput-gestures.git\
    cd libinput-gestures
    sudo make install
    ```

12. nvm

    ```bash
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
    ```

13. fzf

      ```bash
      sudo apt install fzf
      ```

14. deb-get

```sh
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get

```
