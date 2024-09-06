#!/bin/bash

 
repo=llbranco
default_dir=~/PPPwn
RED='\033[0;91m'
GREEN='\033[0;92m'
YELLOW='\033[0;93m'
BLUE='\033[0;94m'
PURPLE='\033[0;95m'
CYAN='\033[0;96m'
NC='\033[0m' # No Color

echo -e "${GREEN}

                                       _         _               
 _ __  _ __  _ ____      ___ __    ___| |___   _| |__   _____  __
| '_ \| '_ \| '_ \ \ /\ / / '_ \  / __| __\ \ / / '_ \ / _ \ \/ /
| |_) | |_) | |_) \ V  V /| | | | \__ \ |_ \ V /| |_) | (_) >  < 
| .__/| .__/| .__/ \_/\_/ |_| |_| |___/\__| \_/ |_.__/ \___/_/\_\.
|_|   |_|   |_|                                                  

${NC}
PPPwn StvBox By ${BLUE}llbranco${NC}  https://github.com/llbranco/PPPwn_STvBox

Based on PPLGPwn project by${PURPLE}Kodeine${NC}, ${CYAN}llbranco${NC} & ${PURPLE}Contributors${NC}, with ${RED}luv <3${NC}
Version: ${PURPLE}v1.3.1 STB${NC}

${CYAN}-=-=-= INSTALLATION =-=-=-${NC}
"

reinstall=false
cpu_arch=$(uname -m)


# Function to handle removal and reinstallation
    echo "Removing $1 to reinstall..."
    pkill -f "pppwn"
    pkill -f "pppwn_$cpu_arch"
    rm -rf "$1"
    reinstall=true
    echo "Done!"

# Array of directories to check
array_dir=("$default_dir" "/media/internal/downloads/PPLGPwn-main")

# Loop through directories
for dir in "${array_dir[@]}"; do
    if [ -d "$dir" ]; then
        read -p "$(basename "$dir") already installed. Reinstall? [Y/N] " response
        case "$response" in
            [yY][eE][sS]|[yY])
                reinstall_pppwn "$dir"
                ;;
        esac
    else
        reinstall=true
    fi
done

if [ "$reinstall" = true ]; then
    echo "Proceeding with installation..."
    # Determine CPU architecture
    case "$cpu_arch" in
        "armv7" | "armv7l")
            cpu_arch='armv7'
            ;;
        "aarch64")
            cpu_arch='aarch64'
            ;;
        *)
            echo "
            Unsupported CPU architecture, please report onto the issues tab in the GitHub repo with your cpu arch!
            Cpu architecture = $cpu_arch
            "
            exit 1
            ;;
    esac

    echo "Proceeding with installation for CPU architecture: $cpu_arch"
fi

echo -e "
${CYAN}-------
Supported firmwares 9.00 9.60 10.00 10.01 10.50 10.70 10.71 11.00
Choose firmware version...
-------${NC}
"

read -p "Firmware version (900-1100): " fmv

# autodetect your lan
# credits: https://serverfault.com/questions/842964/bash-script-to-retrieve-name-of-ethernet-network-interface
# with a little update to remove any empty space
lan_link=$(ip link | awk -F: '$0 !~ "lo|vir|^[^0-9]"{gsub(/^[ \t]+/, "", $2); print $2; getline}')

echo -e "
${CYAN}-------
Downloading files...
-------${NC}
"

# Create default_dir if it doesn't exist
if [ ! -d "$default_dir" ]; then
    echo "Creating directory $default_dir..."
    mkdir -p "$default_dir"
fi

# Downloading files into default_dir
curl -fsSL -o "$default_dir/pppwn" "https://github.com/$repo/PPLGPwn/raw/main/pppwn_$cpu_arch"
curl -fsSL -o "$default_dir/run.sh" "https://github.com/$repo/PPPwn_STvBox/raw/main/PPPwn/run.sh"
curl -fsSL -o "$default_dir/stage1.bin" "https://github.com/$repo/PPLGPwn/raw/main/stage1/$fmv/stage1.bin"
curl -fsSL -o "$default_dir/stage2.bin" "https://github.com/$repo/PPLGPwn/raw/main/stage2/$fmv/stage2.bin"

echo -e "Done!

${CYAN}-------
Writing settings...
-------${NC}
"

echo "
interface=$lan_link
firmver=$fmv
stage1=$default_dir/stage1.bin
stage2=$default_dir/stage2.bin
" > "$default_dir/settings.config"
echo "Done!
"
echo "If you wish to change the stage2.bin go into $default_dir and replace the existing stage2.bin!
"
echo "To run the exploit execute "run.sh" present in the mentioned directory! But to make it simpler follow the steps to execute the exploit with the click of a button! :)"
echo "Enjoy ;)"

echo "Running PPPWN in 3 seconds..."
sleep 3

cd "$default_dir"
chmod +x ./run.sh
./run.sh
