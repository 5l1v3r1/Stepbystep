#!/usr/bin/bash
# Stepbystep
# Coded by Nedi Senja
# Github: https://github.com/stepbystepexe/Stepbystep
clear
trap 'echo Keluar...; exit 1;' SIGINT SIGTSTP
checkroot(){
if [[ "$(id -u)" -ne 0 ]]; then
    printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mMohon, jalankan program root!\n\n\e[0m"
    exit 1
fi
}
#checkroot
package(){
    printf "\e[0m[\e[1;91m INFO \e[0m] \e[0;100;77;1m Menginstall paket & tool \e[0m\n\n"
    sleep 1
    (trap '' SIGINT SIGTSTP && command -v bash > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Bash, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install bash > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mBash tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v curl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall cURL, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install curl > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mcURL tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v wget > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Wget, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install wget > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mWget tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v openssl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Openssl, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install openssl > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mOpenssl tidak terinstall.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v tor > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall TOR, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > tor > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mTOR tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v git > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Git, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > git > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mGit tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v w3m > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall w3m, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > w3m > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mw3m tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v nano > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Nano, memproses......\n\e[0m"; apt-get update > /dev/null && apt-get -y install > nano > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mNano tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v imagemagick > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Imagemagick, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > imagemagick > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mImagemagick tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v figlet > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Figlet, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > figlet > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mFiglet tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v ruby > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Ruby, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > ruby > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mRuby tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v nodejs > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall NodeJS, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > nodejs > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mNodeJS tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v clang > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Clang, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > clang > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mClang tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v php > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall PHP, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > php > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPHP tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Python, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > python > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python2 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Python2, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install python2 > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython2 tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python3 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Python3, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install python3 > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython3 tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v perl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Perl, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install perl > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPerl tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v nmap > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Nmap, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install nmap > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mNmap tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v hydra > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Hydra, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install hydra > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mHydra tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v heroku > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Heroku, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install heroku > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mHeroku tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v crunch > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall CRUNCH, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install crunch > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mCRUNCH tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v libcurl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall LibcURL, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install libcurl > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mlibcURL tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v lynx > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Lynx, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install lynx > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mLynx tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v gdb > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall GDB, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install gdb > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mGDB tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v rader2 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Rader2, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install rader2 > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mRader2 tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v ired > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall iRed, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install ired > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77miRed tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v addrescue > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall addRescue, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install addrescue > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77maddRescue tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v yasm > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Yasm, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install yasm > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mYasm tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v ltrace > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall LTRace, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install ltrace > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mLTRace tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v strace > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall STRace, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install strace > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mSTRace tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v cdb > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall CDB, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install cdb > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mCDB tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v hexcurse > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Hexcurse, tidak terinstall.\n\e[0m"; apt-get update > /dev/null && apt-get -y install hexcurse > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mHexcurse tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v llvmdb > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall llvmdb, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install llvmdb > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mllvmdb tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v memcached > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Memcached, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install memcached > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mMemcached tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v bin-utils > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall bin-utils, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install bin-utils > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mbin-utils tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v ncurses-utils > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall necursess-utils, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install ncurses-utils > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mncurses-utils tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python -m pip install mechanize argparse dnspython requests urllib3 colorama bs4 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Python Pip, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install mechanize argparse dnspython requests urllib3 colorama bs4 > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython Pip tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python2 -m pip install google urllib3 chardet certifi idna scapy validate_email pyDNS optparse termcolor wget binascii passlib progressbar pexpect hashid mechanize requests progressbar colorama bs4 urllib2 pysnmp argparse HTMLParser urlparse urlparse2 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Python2 Pip, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install python2 -m pip install google urllib3 chardet certifi idna scapy validate_email pyDNS optparse termcolor wget binascii passlib progressbar pexpect hashid mechanize requests progressbar colorama bs4 urllib2 pysnmp argparse HTMLParser urlparse urlparse2 > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython2 Pip tidak terinstall.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python2-dev clang libxml2-dev libxml2-utils libxslt-dev > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mMenginstall Python2-dev, memproses...\n\e[0m"; apt-get update > /dev/null && apt-get -y install python2-dev clang libxml2-dev libxml2-utils libxslt-dev > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython2-dev tidak terinstall.\n\e[0m";}) & wait $!
}
termuxupdate(){
    package
    sleep 1
    read -p $'\n\e[0m[\e[1;97m+\e[0m] Update & upgrade termux [Y/n] ' dat
        if [[ $dat == 'y' || $dat == 'Y' ]]; then
        echo
        apt update && apt upgrade
        echo
        installtools
        sleep 0.1
            elif [[ $dat == 'n' || $dat == 'N' ]]; then
            echo
            exit 1
            echo
        else
            echo
    fi
}
installtools(){
    sleep 1
    mkdir -p tools
    cd tools
        # Nmap
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Nmap\e[0m"
        apt install nmap
        # RED HAWK
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall RED HAWK\e[0m"
        git clone https://github.com/Tuhinshubhra/RED_HAWK
        # D-Tect
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall D-Tect\e[0m"
        git clone https://github.com/bibortone/D-Tech
        # sqlmap
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall sqlmap\e[0m"
        git clone https://github.com/sqlmapproject/sqlmap
        # Infoga
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Infoga\e[0m"
        git clone https://github.com/m4ll0k/Infoga
        # ReconDog
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall ReconDog\e[0m"
        git clone https://github.com/UltimateHackers/ReconDog
        # AndroZenmap
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall AndroZenmap\e[0m"
        mkdir -p AndroZenmap
        curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/androzenmap.sh
        # sqlmate
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall sqlmate\e[0m"
        git clone https://github.com/UltimateHackers/sqlmate
        # AstraNmap
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall AstraNmap\e[0m"
        git clone https://github.com/Gameye98/AstraNmap
        # WTF
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall WTF\e[0m"
        git clone https://github.com/Ranginang67/DarkFly-Tool
        # Easymap
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Easymap\e[0m"
        git clone https://github.com/Cvar1984/Easymap
        cd tools/Easymap && sh install.sh
        # XD3v
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall XD3v\e[0m"
        mkdir -p xd3v
        curl -k -O https://gist.github.com/Gameye98/92035588bd0228df6fb7fa77a5f26bc2/raw/f8e73cd3d9f2a72bd536087bb6ba7bc8baef7d1d/xd3v.sh
        chmod +x ~/../usr/bin/xd3v
        # Crips
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Crips\e[0m"
        git clone https://github.com/Manisso/Crips
        # SIR
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall SIR\e[0m"
        git clone https://github.com/AeonDave/sir
        # Xshell
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall XShell\e[0m"
        git clone https://github.com/Ubaii/Xshell
        # EvilURL
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall EvilURL\e[0m"
        git clone https://github.com/UndeadSec/EvilURL
        # Striker
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Striker\e[0m"
        git clone https://github.com/UltimateHackers/Striker
        cd tools/Striker && python2 -m pip install -r requirements.txt
        # DSSS
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall DSSS\e[0m"
        git clone https://github.com/stamparm/DSSS
        # SQLiv
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall SQLiv\e[0m"
        git clone https://github.com/Hadesy2k/sqliv
        # sqlscan
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall sqlscan\e[0m"
        git clone http://www.github.com/Cvar1984/sqlscan
        # Wordpresscan
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall Wordpresscan\e[0m"
        git clone https://github.com/swisskyrepo/Wordpresscan
        cd tools/Wordpresscan && python2 -m pip install -r requirements.txt
        # WPScan
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall WPScan\e[0m"
        git clone https://github.com/wpscanteam/wpscan
        gem install bundle && bundle config build.nokogiri --use-system-libraries && bundle install && ruby wpscan.rb --update
        # Wordpresscan2
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Wordpresscan2\e[0m"
        git clone https://github.com/silverhat007/termux-wordpresscan
        cd tools/termux-wordpresscan && chmod +x * && sh install.sh
        # Routersploit
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Routersploit\e[0m"
        git clone https://github.com/reverse-shell/routersploit
        cd tools/routersploit && python2 -m pip install -r requirements.txt && termux-fix-shebang rsf.py
        # Torshammer
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Torshammer\e[0m"
        git clone https://github.com/dotfighter/torshammer
        # Slowloris
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Slowloris\e[0m"
        git clone https://github.com/gkbrk/slowloris
        # Fl00d & Fl00d2
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall Fl00d & Fl00d2\e[0m"
        mkdir -p fl00d
        curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/fl00d.py
        curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/fl00d2.py
        # GoldenEye
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall GoldenEye\e[0m"
        git clone https://github.com/jseidl/GoldenEye
        # Xerxes
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Xerxes\e[0m"
        git clone https://github.com/zanyarjamal/xerxes
        cd tools/xerxes && clang xerxes.c -o xerxes
        # Planetwork-DDOS
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Planetwork-DDOS\e[0m"
        git clone https://github.com/Hydra7/Planetwork-DDOS
        # Hydra
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Hydra\e[0m"
        apt install hydra
        # InstaHack
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall InstaHack\e[0m"
        git clone https://github.com/thelinuxchoice/instashell
        # indonesian-wordlist
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall Indonesian-Wordlist\e[0m"
        git clone https://github.com/geovedi/indonesian-wordlist
        # Facebook Brute Force 3
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall Facebook Brute Force 3\e[0m"
        mkdir -p facebook-brute-3
        curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/facebook3.py
        curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/wordlist/password.txt
        # webdav
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Webdav\e[0m"
        mkdir -p webdav
        curl -k -O http://override.waper.co/files/webdav.txt
        # Ohmyqr
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall xGans\e[0m"
        git clone https://github.com/thelinuxchoice/ohmyqr
        # Webdav Mass Exploiter
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Webdav Mass Exploiter\e[0m"
        mkdir -p webdav-mass-exploit
        curl -k -O https://pastebin.com/raw/K1VYVHxX
        # WPSploit
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall WPSploit\e[0m"
        git clone https://github.com/espreto/wpsploit
        # sqldump
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall sqldump\e[0m"
        mkdir -p sqldump
        curl -k -O https://gist.githubusercontent.com/Gameye98/76076c9a282a6f32749894d5368024a6/raw/6f9e754f2f81ab2b8efda30603dc8306c65bd651/sqldump.py
        chmod +x sqldump.py
        # Websploit
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall Websploit\e[0m"
        git clone https://github.com/The404Hacking/websploit
        # Blackhydra
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Blackhydra\e[0m"
        git clone https://github.com/stepbystepexe/Blackhydra
        # Darkroom
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Darkroom\e[0m"
        git clone https://github.com/stepbystepexe/Darkroom
        # Multiface
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Multiface\e[0m"
        git clone https://github.com/stepbystepexe/Multiface
        # Facecracks
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Facecracks\e[0m"
        git clone https://github.com/stepbystepexe/Facecracks
        # Thefacesite
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77Menginstall Thefacesite\e[0m"
        git clone https://github.com/stepbystepexe/Thefacesite
        # Tebasindex
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77Menginstall Tebasindex\e[0m"
        git clone https://github.com/stepbystepexe/Tebasindex
        # Grabspams
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77Menginstall Grabspams\e[0m"
        git clone https://github.com/stepbystepexe/Grabspams
        # Compilers
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77Menginstall Compilers\e[0m"
        git clone https://github.com/stepbystepexe/Compilers
        # Metasploit
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Metasploit\e[0m"
        apt install metasploit
        # Commix
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Commix\e[0m"
        git clone https://github.com/commixproject/commix
        # Brutal
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall Brutal\e[0m"
        git clone https://github.com/Screetsec/Brutal
        # A-Rat
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall A-Rat\e[0m"
        git clone https://github.com/Xi4u7/A-Rat
        # KnockMail
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall KnockMail\e[0m"
        git clone https://github.com/4w4k3/KnockMail
        # Examkill
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Spam-Grabs\e[0m"
        git clone https://github.com/p4kl0nc4t/Examkill
        # Spamer-Grab
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Spam-Grab\e[0m"
        git clone https://github.com/p4kl0nc4t/Spammer-Grab
        # Rang3r
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Rang3r\e[0m"
        git clone https://github.com/floriankunushevci/rang3r
        # SH33LL
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall SH33LL\e[0m"
        git clone https://github.com/LOoLzeC/SH33LL
        # Social-Engineering
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall Social-Engineering\e[0m"
        git clone https://github.com/LOoLzeC/social-engineering
        # SpiderBot
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall SpiderBot\e[0m"
        git clone https://github.com/mustafaneguib/spiderbot
        # Ngrok
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Ngrok\e[0m"
        git clone https://github.com/inconshreveable/ngrok
        # Sudo
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Sudo\e[0m"
        git clone https://github.com/st42/termux-sudo
        cd tools/termux-sudo && chmod 777 *
        cat sudo > /data/data/com.termux/files/usr/bin/sudo
        chmod 700 /data/data/com.termux/files/usr/bin/sudo
        # Ubuntu
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Ubuntu\e[0m"
        git clone https://github.com/Neo-Oli/termux-ubuntu
        cd tools/termux-ubuntu && bash ubuntu.sh
        # Fedora
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall Fedora\e[0m"
        mkdir -p fedora
        wget https://raw.githubusercontent.com/nmilosev/termux-fedora/master/termux-fedora.sh
        # Cupp
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall Cupp\e[0m"
        git clone https://github.com/Mebus/cupp
        # ASU
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall ASU\e[0m"
        git clone https://github.com/LOoLzeC/ASU
        # Hash-Buster
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Hash-Buster\e[0m"
        git clone https://github.com/UltimateHackers/Hash-Buster
        # Kali NetHunter
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Kali NetHunter\e[0m"
        git clone https://github.com/Hax4us/Nethunter-In-Termux
        # BlackBox
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall BlackBox\e[0m"
        git clone https://github.com/jothatron/blackbox
        # XAttacker
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall XAttacker\e[0m"
        git clone https://github.com/Moham3dRiahi/XAttacker
        # VCRT
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall VCRT\e[0m"
        git clone https://github.com/LOoLzeC/Evil-create-framework
        # SocialFish
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall SocialFish\e[0m"
        git clone https://github.com/UndeadSec/SocialFish
        # HidenEye
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall HidenEye\e[0m"
        git clone https://github.com/DarkSecDevelpoers/HidenEye
        # Hashzer
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Hashzer\e[0m"
        git clone https://github.com/Anb3rSecID/Hashzer
        # XSStrike
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall XSStrike\e[0m"
        git clone https://github.com/UltimateHackers/XSStrike
        # Breacher
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall Breach\e[0m"
        git clone https://github.com/UltimateHackers/Breacher
        # Termux-Styling
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall Termux-Styling\e[0m"
        git clone https://github.com/BagazMukti/Termux-Styling-Shell-Script
        # TXTool
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall TXTool\e[0m"
        git clone https://github.com/kuburan/txtool
        # PassGen
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall PassGen\e[0m"
        git clone https://github.com/Broham/PassGen
        # OWScan
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall OWScan\e[0m"
        git clone https://github.com/Gameye98/OWScan
        # santet-online
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Santet-Online\e[0m"
        git clone https://github.com/Gameye98/santet-online
        # SpazSMS
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling SpazSMS\e[0m"
        git clone https://github.com/Gameye98/SpazSMS
        # Hasher
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall Hasher\e[0m"
        git clone https://github.com/ciku370/hasher
        # Hash-Generator
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Hash-Generator\e[0m"
        git clone https://github.com/ciku370/hash-generator
        # exitko-dork
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Ko-Dork\e[0m"
        git clone https://github.com/ciku370/ko-dork
        # Snitch
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Snicth\e[0m"
        git clone https://github.com/Smaash/snitch
        # OSIF
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall OSIF\e[0m"
        git clone https://github.com/ciku370/OSIF
        # nk26
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall nk26\e[0m"
        git clone https://github.com/~
        # Devploit
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall Devploit\e[0m"
        git clone https://github.com/GhettoCole/Devploit
        # Hasherdotid
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Hasherdotid\e[0m"
        git clone https://github.com/galauerscrew/hasherdotid
        # Namechk
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Namechk\e[0m"
        git clone https://github.com/HA71/Namechk
        # XL-py
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall XL-py\e[0m"
        git clone https://github.com/albertoanggi/xl-py
        # BeanShell
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Beanshell\e[0m"
        mkdir -p beanshell
        wget https://github.com/amsitlab/amsitlab.github.io/raw/master/dists/termux/amsitlab/binary-all/beanshell_2.04_all.deb
        dpkg -i beanshell_2.04_all.deb
        rm beanshell_2.04_all.deb
        # MSF-pg
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall MSF-pg\e[0m"
        git clone https://github.com/haxzsadik/MSF-Pg
        # Crunch
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall Crunch\e[0m"
        apt install crunch
        # Binary Exploitation
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Binary Exploitation\e[0m"
        apt install gdb radare2 ired ddrescue bin-utils yasm strace ltrace cdb hexcurse memcached llvmdb
        echo -e "\e[1;77m[#] Tutorial: https://youtu.be3NTXFUxcKPc\e[0m"
        # Textr
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Textr\e[0m"
        mkdir -p textr
        wget https://raw.githubusercontent.com/amsitlab/textr/master/textr_1.0_all.deb
        dpkg -i textr_1.0_all.deb
        rm textr_1.0_all.deb
        # ApSca
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall ApSca\e[0m"
        mkdir -p ApSca
        wget https://raw.githubusercontent.com/BlackHoleSecurity/apsca/master/apsca_0.1_all.deb
        dpkg -i apsca_0.1_all.deb
        rm apsca_0.1_all.deb
        # Amox
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Amox\e[0m"
        mkdir -p amox
        wget https://gitlab.com/dtlily/amox/raw/master/amox_1.0_all.deb
        dpkg -i amox_1.0_all.deb
        rm amox_1.0_all.deb
        # FaDe
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall FaDe\e[0m"
        git clone https://github.com/Gameye98/FaDe
        # GINF
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall GINF\e[0m"
        git clone https://github.com/Gameye98/GINF
        # AUXILE
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall AUXILE\e[0m"
        git clone https://github.com/CiKu370/AUXILE
        # Inther
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Inther\e[0m"
        git clone https://github.com/Gameye98/inther
        # HPB
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall HPB\e[0m"
        mkdir -p HPB
        wget https://raw.githubusercontent.com/Cvar1984/HPB/master/html_0.1_all.deb
        dpkg -i html_0.1_all.deb
        rm html_0.1_all.deb
        # FMBrute
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall FMBrute\e[0m"
        git clone https://github.com/BlackHoleSecurity/FMBrute
        # HashID
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall HashID\e[0m"
        apt install python2 && python2 -m pip install hashid
        # GPS Tracking
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall GPS Tracking\e[0m"
        git clone https://github.com/indosecid/info_gath
        # PRET
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall PRET\e[0m"
        git clone https://github.com/RUB-NDS/PRET
        # AutoVisitor
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall AutoVisitor\e[0m"
        git clone https://github.com/IDSYSTEM404/AUTOVISITOR
        # Atlas
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Atlas\e[0m"
        git clone https://github.com/m4ll0k/Atlas
        # FBBrute
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall FBBrute\e[0m"
        git clone https://github.com/Gameye98/FBBrute
        # FIM
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall FIM\e[0m"
        git clone https://github.com/karjok/fim
        # RShell
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall RShell\e[0m"
        git clone https://github.com/Jishu-Epic/RShell
        # TermPyter
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall TermPyter\e[0m"
        git clone https://github.com/Jishu-Epic/TermPyter
        # MaxSubdoFinder
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall MaxSubdoFinder\e[0m"
        git clone https://github.com/maxteroit/MaxSubdoFinder
        # Jadx
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Jadx\e[0m"
        mkdir -p jadx
        wget https://github.com/Lexiie/Termux-Jadx/blob/master/jadx-0.6.1_all.deb?raw=true
        dpkg -i jadx-0.6.1_all.deb?raw=true
        rm -rf jadx-0.6.1_all.deb?raw=true
        # PwnedOrNot
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall PwnedOrNot\e[0m"
        git clone https://github.com/thewhiteh4t/pwnedOrNo
        # Mac-Lokup
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall Mac-Lokup\e[0m"
        git clone https://github.com/T4P4N/Mac-Lookup
        # F4K3
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall F4K3\e[0m"
        mkdir -p F4K3
        wget https://github.com/Gameye98/Gameye98.github.io/blob/master/package/f4k3_1.0_all.deb
        dpkg -i f4k3_1.0_all.deb
        rm -rf f4k3_1.0_all.deb
        # Katak
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall Katak\e[0m"
        git clone https://github.com/Gameye98/Katak
        # Heroku
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall Heroku\e[0m"
        apt install nodejs
        apt install heroku
        # Anonymous
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mMenginstall Anonymous\e[0m"
        git clone https://github.com/stepbystepexe/Anonymous
        # Keydroid
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mMenginstall Keydroid\e[0m"
        git clone https://github.com/thelinuxchoice/keydroid
        # WhatsHack
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mMenginstall WhatsHack\e[0m"
        git clone https://github.com/thelinuxchoice/whatshack
        # Google
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mMenginstall Google\e[0m"
        python -m pip install google
        # BillCipher
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mMenginstall BillCipher\e[0m"
        git clone https://github.com/GitHackTools/BillCipher
        # vbug
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mMenginstall vBug\e[0m"
        git clone https://github.com/Gameye98/vbug
        sleep 1
            read -p $'\n\e[0m[\e[1;97m+\e[0m] Kembali ke tool, Step By Step [Y/n] ' opt
                if [[ $opt == 'y' || $opt == 'Y' ]]; then
                cd $HOME/stepbystep
                bash stepbystep.sh
                    elif [[ $opt == 'n' || $opt == 'N' ]]; then
                    echo
                    exit 1
                    echo
                else
                    echo
            fi
}
termuxupdate
