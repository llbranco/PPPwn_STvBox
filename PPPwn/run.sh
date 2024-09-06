clear
cpu_arch=`uname -m`
RED='\033[0;91m'
GREEN='\033[0;92m'
YELLOW='\033[0;93m'
BLUE='\033[0;94m'
PURPLE='\033[0;95m'
CYAN='\033[0;96m'
NC='\033[0m' # No Color
. ~/PPPwn/settings.config
echo -e "${GREEN}

                                       _         _               
 _ __  _ __  _ ____      ___ __    ___| |___   _| |__   _____  __
| '_ \| '_ \| '_ \ \ /\ / / '_ \  / __| __\ \ / / '_ \ / _ \ \/ /
| |_) | |_) | |_) \ V  V /| | | | \__ \ |_ \ V /| |_) | (_) >  < 
| .__/| .__/| .__/ \_/\_/ |_| |_| |___/\__| \_/ |_.__/ \___/_/\_\.
|_|   |_|   |_|                                                  

${NC}
PPPwn StvBox By ${BLUE}llbranco${NC} https://github.com/llbranco/PPPwn_STvBox

Based on PPLGPwn project by ${PURPLE}Kodeine${NC}, ${CYAN}llbranco${NC} & ${PURPLE}Contributors${NC}, with ${RED}luv <3${NC}
Version: ${PURPLE}v1.3.1 STB${NC}

${CYAN}-=-=-= RUNNING on $cpu_arch =-=-=- ${NC}
"

chmod +x ./pppwn
./pppwn --interface $interface --fw $firmver --stage1 $stage1 --stage2 $stage2 --auto-retry
echo "./pppwn --interface $interface -fw $firmver --stage1 $stage1 --stage2 $stage2 --auto-retry"
