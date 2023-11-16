# Termux update repos
termux-change-repo

# Setup termux storage
termux-setup-storage

# Update packages
yes | pkg update && pkg upgrade

# Install main stuff
pkg install git wget jq openssh python python-pip termux-api zsh -y

#Install fish 
pkg install git -y && git clone https://github.com/msn-05/termux-fish.git && cd termux-fish && chmod +x script.sh && ./script.sh




#Fix for pip install failing to work
pkg up
pkg rei libexpat

# Done
echo '\nSetup is Done!'