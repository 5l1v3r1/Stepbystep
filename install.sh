#!/data/data/com.termux/files/usr/bin/bash
# Stepbystep
# Coded by Senja
# Github: https://github.com/stepbystepexe/Stepbystep
clear
trap 'echo exiting cleanly...!; exit 1;' SIGINT SIGTSTP
checkroot(){
if [[ "$(id -u)" -ne 0 ]]; then
    printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mPlease, run this program as root!\n\n\e[0m"
    exit 1
fi
}
#checkroot
package(){
    printf "\e[0m[\e[1;91mINFO\e[0m] \e[0;100;77;1m install package & tools \e[0m\n\n"
    sleep 1
    (trap '' SIGINT SIGTSTP && command -v bash > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Bash, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install bash > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mBash Not installed.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v tor > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling TOR, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install tor > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mTor Not installed.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v openssl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling openssl, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install openssl > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mOpenssl Not installed.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v curl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling cURL, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install curl > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mCurl Not installed.\n\e[0m"; }) & wait $!
    (trap '' SIGINT SIGTSTP && command -v wget > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Wget, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > wget > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mWget Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v git > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Git, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > git > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mGit Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v w3m > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling w3m, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > w3m > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mw3m Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v nano > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Nano, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > nano > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mNano Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v imagemagick > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Imagemagick, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > imagemagick > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mimagemagick Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v figlet > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Figlet, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > figlet > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mFiglet Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v ruby > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Ruby, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > ruby > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mRuby Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v nodejs > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling NodeJS, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > nodejs > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mNodeJS Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v clang > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Clang, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > clang > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mClang Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v php > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling PHP, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > php > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPHP Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Python, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install > python > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python2 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Python2, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install python2 > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython2 Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python3 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Python3, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install python3 > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython3 Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v perl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Perl, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install perl > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPerl Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v nmap > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Nmap, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install nmap > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mNmap Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v hydra > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Hydra, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install hydra > /dev/null || printf "\e[0m[\e[1;93m!\e[0m] \e[1;77mHydra Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v heroku > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Heroku, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install heroku > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mHeroku Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v crunch > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling CRUNCH, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install crunch > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mCRUNCH Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v libcurl > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling LibcURL, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install libcurl > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mlibcURL Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v lynx > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Lynx, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install lynx > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mlynx Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v gdb > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling GDB, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install gdb > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mGDB Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v rader2 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Rader, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install rader2 > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mRader2 Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v ired > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling iRed, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install ired > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77miRed Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v addrescue > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling addRescue, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install addrescue > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77maddRescue Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v yasm > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Yasm, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install yasm > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mYasm Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v ltrace > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling ltRace, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install ltrace > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mltRace Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v strace > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling STRace, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install strace > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mSTRace Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v cdb > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling cDB, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install cdb > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mcdb Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v hexcurse > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Hexcurse, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install hexcurse > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mHexcurse Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v llvmdb > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling llvmdb, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install llvmdb > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mllvmdv Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v memcached > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Memcached, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install memcached > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mMemcached Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v bin-utils > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling bin-utils, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install bin-utils > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mbin-utils Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v ncurses-utils > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling necurses-utils, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install ncurses-utils > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mncurses-utils Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python -m pip install mechanize argparse dnspython requests urllib3 colorama bs4 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Python Pip, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install mechanize argparse dnspython requests urllib3 colorama bs4 > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython Pip Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python2 -m pip install google urllib3 chardet certifi idna scapy validate_email pyDNS optparse termcolor wget binascii passlib progressbar pexpect hashid mechanize requests progressbar colorama bs4 urllib2 pysnmp argparse HTMLParser urlparse urlparse2 > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m$\e[0m] \e[1;77mInstalling Python2 Pip, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install python2 -m pip install google urllib3 chardet certifi idna scapy validate_email pyDNS optparse termcolor wget binascii passlib progressbar pexpect hashid mechanize requests progressbar colorama bs4 urllib2 pysnmp argparse HTMLParser urlparse urlparse2 > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython2 Pip Not installed.\n\e[0m";}) & wait $!
    (trap '' SIGINT SIGTSTP && command -v python2-dev clang libxml2-dev libxml2-utils libxslt-dev > /dev/null 2>&1 || { printf >&2  "\e[0m[\e[1;92m#\e[0m] \e[1;77mInstalling Python2-dev, please wait...\n\e[0m"; apt-get update > /dev/null && apt-get -y install python2-dev clang libxml2-dev libxml2-utils libxslt-dev > /dev/null || printf "\e[0m[\e[1;91m-\e[0m] \e[1;77mPython2-dev Not installed.\n\e[0m";}) & wait $!
    printf "\e[0m[\e[1;94m!\e[0m] \e[1;77mMy packag & tools all installed\n\n\e[0m"
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
            elif [[ $dat == 'n' || $sat == 'N' ]]; then
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
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling Nmap\e[0m"
        apt install nmap
        # RED HAWK
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Red Hawk\e[0m"
        git clone https://github.com/Tuhinshubhra/RED_HAWK
        # D-Tect
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling D-Tect\e[0m"
        git clone https://github.com/bibortone/D-Tech
        # sqlmap
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling sqlmap\e[0m"
        git clone https://github.com/sqlmapproject/sqlmap
        # Infoga
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling Infoga\e[0m"
        git clone https://github.com/m4ll0k/Infoga
        # ReconDog
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling ReconDog\e[0m"
        git clone https://github.com/UltimateHackers/ReconDog
        # AndroZenmap
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling AndroZenmap\e[0m"
        mkdir -p AndroZenmap
        curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/androzenmap.sh
        # sqlmate
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling sqlmate\e[0m"
        git clone https://github.com/UltimateHackers/sqlmate
        # AstraNmap
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling AstraNmap\e[0m"
        git clone https://github.com/Gameye98/AstraNmap
        # WTF
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling WTF\e[0m"
        git clone https://github.com/Ranginang67/DarkFly-Tool
        # Easymap
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling Easymap\e[0m"
        git clone https://github.com/Cvar1984/Easymap
        cd tools/Easymap && sh install.sh
        # XD3v
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling XD3v\e[0m"
        mkdir -p xd3v
        curl -k -O https://gist.github.com/Gameye98/92035588bd0228df6fb7fa77a5f26bc2/raw/f8e73cd3d9f2a72bd536087bb6ba7bc8baef7d1d/xd3v.sh
        chmod +x ~/../usr/bin/xd3v
        # Crips
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling Crips\e[0m"
        git clone https://github.com/Manisso/Crips
        # SIR
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling SIR\e[0m"
        git clone https://github.com/AeonDave/sir
        # Xshell
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling XShell\e[0m"
        git clone https://github.com/Ubaii/Xshell
        # EvilURL
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling EvilURL\e[0m"
        git clone https://github.com/UndeadSec/EvilURL
        # Striker
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling Striker\e[0m"
        git clone https://github.com/UltimateHackers/Striker
        cd tools/Striker && python2 -m pip install -r requirements.txt
        # DSSS
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling DSSS\e[0m"
        git clone https://github.com/stamparm/DSSS
        # SQLiv
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling SQLiv\e[0m"
        git clone https://github.com/Hadesy2k/sqliv
        # sqlscan
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling sqlscan\e[0m"
        git clone http://www.github.com/Cvar1984/sqlscan
        # Wordpresscan
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling Wordpresscan\e[0m"
        git clone https://github.com/swisskyrepo/Wordpresscan
        cd tools/Wordpresscan && python2 -m pip install -r requirements.txt
        # WPScan
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling WPScan\e[0m"
        git clone https://github.com/wpscanteam/wpscan
        gem install bundle && bundle config build.nokogiri --use-system-libraries && bundle install && ruby wpscan.rb --update
        # Wordpresscan2
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling Wordpresscan2\e[0m"
        git clone https://github.com/silverhat007/termux-wordpresscan
        cd tools/termux-wordpresscan && chmod +x * && sh install.sh
        # Routersploit
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling Routersploit\e[0m"
        git clone https://github.com/reverse-shell/routersploit
        cd tools/routersploit && python2 -m pip install -r requirements.txt && termux-fix-shebang rsf.py
        # Torshammer
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling Torshammer\e[0m"
        git clone https://github.com/dotfighter/torshammer
        # Slowloris
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Slowloris\e[0m"
        git clone https://github.com/gkbrk/slowloris
        # Fl00d & Fl00d2
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling Fl00d & Fl00d2\e[0m"
        mkdir -p fl00d
        curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/fl00d.py
        curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/fl00d2.py
        # GoldenEye
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling GoldenEye\e[0m"
        git clone https://github.com/jseidl/GoldenEye
        # Xerxes
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling Xerxes\e[0m"
        git clone https://github.com/zanyarjamal/xerxes
        cd tools/xerxes && clang xerxes.c -o xerxes
        # Planetwork-DDOS
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling Planetwork-DDOS\e[0m"
        git clone https://github.com/Hydra7/Planetwork-DDOS
        # Hydra
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling Hydra\e[0m"
        apt install hydra
        # Black Hydra
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Black Hydra\e[0m"
        git clone https://github.com/stepbystepexe/blackhydra
        # InstaHack
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling InstaHack\e[0m"
        git clone https://github.com/avramit/instahack
        # indonesian-wordlist
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling indonesian-wordlist\e[0m"
        git clone https://github.com/geovedi/indonesian-wordlist
        # Facebook Brute Force 3
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling Facebook Brute Force 3\e[0m"
        mkdir -p facebook-brute-3
        curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/scripts/facebook3.py
        curl -O https://raw.githubusercontent.com/Gameye98/Gameye98.github.io/master/wordlist/password.txt
        # webdav
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling webdav\e[0m"
        mkdir -p webdav
        curl -k -O http://override.waper.co/files/webdav.txt
        # xGans
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling xGans\e[0m"
        mkdir -p xgans
        curl -O http://override.waper.co/files/xgans.txt
        # Webdav Mass Exploiter
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Webdav Mass Exploiter\e[0m"
        mkdir -p webdav-mass-exploit
        curl -k -O https://pastebin.com/raw/K1VYVHxX
        # WPSploit
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling WPSploit\e[0m"
        git clone https://github.com/m4ll0k/wpsploit
        # sqldump
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling sqldump\e[0m"
        mkdir -p sqldump
        curl -k -O https://gist.githubusercontent.com/Gameye98/76076c9a282a6f32749894d5368024a6/raw/6f9e754f2f81ab2b8efda30603dc8306c65bd651/sqldump.py
        chmod +x sqldump.py
        # Websploit
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling Websploit\e[0m"
        git clone https://github.com/The404Hacking/websploit
        # sqlokmed
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling sqlokmed\e[0m"
        git clone https://github.com/Anb3rSecID/sqlokmed
        # Zones
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling Zones\e[0m"
        git clone https://github.com/Cvar1984/zones
        # Metasploit
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Metasploit\e[0m"
        apt install metasploit
        # Commix
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling Commix\e[0m"
        git clone https://github.com/commixproject/commix
        # Brutal
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling Brutal\e[0m"
        git clone https://github.com/Screetsec/Brutal
        # A-Rat
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling A-Rat\e[0m"
        git clone https://github.com/Xi4u7/A-Rat
        # KnockMail
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling KnockMail\e[0m"
        git clone https://github.com/4w4k3/KnockMail
        # Spammer-Grab
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling Spam-Grabs\e[0m"
        git clone https://github.com/p4kl0nc4t/spammer-grab
        # Hac
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Hac\e[0m"
        git clone https://github.com/Cvar1984/Hac
        # Spamer-Email
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling Spam-Email\e[0m"
        git clone https://github.com/p4kl0nc4t/Spammer-Email
        # Rang3r
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling Rang3r\e[0m"
        git clone https://github.com/floriankunushevci/rang3r
        # SH33LL
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling SH33LL\e[0m"
        git clone https://github.com/LOoLzeC/SH33LL
        # Social-Engineering
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling Social-Engineering\e[0m"
        git clone https://github.com/LOoLzeC/social-engineering
        # SpiderBot
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling SpiderBot\e[0m"
        git clone https://github.com/Cvar1984/SpiderBot
        # ngrok
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling ngrok\e[0m"
        git clone https://github.com/themastersunil/ngrok
        # sudo
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling sudo\e[0m"
        git clone https://github.com/st42/termux-sudo
        cd tools/termux-sudo && chmod 777 *
        cat sudo > /data/data/com.termux/files/usr/bin/sudo
        chmod 700 /data/data/com.termux/files/usr/bin/sudo
        # Ubuntu
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling Ubuntu\e[0m"
        git clone https://github.com/Neo-Oli/termux-ubuntu
        cd tools/termux-ubuntu && bash ubuntu.sh
        # Fedora
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling Fedora\e[0m"
        mkdir -p fedora
        wget https://raw.githubusercontent.com/nmilosev/termux-fedora/master/termux-fedora.sh
        # Cupp
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling Cupp\e[0m"
        git clone https://github.com/Mebus/cupp
        # ASU
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling ASU\e[0m"
        git clone https://github.com/LOoLzeC/ASU
        # Hash-Buster
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Hash-Buster\e[0m"
        git clone https://github.com/UltimateHackers/Hash-Buster
        # Kali NetHunter
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling Kali NetHunter\e[0m"
        git clone https://github.com/Hax4us/Nethunter-In-Termux
        # BlackBox
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling BlackBox\e[0m"
        git clone https://github.com/jothatron/blackbox
        # XAttacker
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling XAttacker\e[0m"
        git clone https://github.com/Moham3dRiahi/XAttacker
        # VCRT
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling VCRT\e[0m"
        git clone https://github.com/LOoLzeC/Evil-create-framework
        # SocialFish
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling SocialFish\e[0m"
        git clone https://github.com/UndeadSec/SocialFish
        # Encode
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Encode\e[0m"
        git clone https://github.com/Cvar1984/Ecode
        # Hashzer
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling Hashzer\e[0m"
        git clone https://github.com/Anb3rSecID/Hashzer
        # XSStrike
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling XSStrike\e[0m"
        git clone https://github.com/UltimateHackers/XSStrike
        # Breacher
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling Breach\e[0m"
        git clone https://github.com/UltimateHackers/Breacher
        # Termux-Styling
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling Termux-Styling\e[0m"
        git clone https://github.com/BagazMukti/Termux-Styling-Shell-Script
        # TXTool
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling TXTool\e[0m"
        git clone https://github.com/kuburan/txtool
        # PassGen
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling PassGen\e[0m"
        git clone https://github.com/Cvar1984/PassGen
        # OWScan
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling OWScan\e[0m"
        git clone https://github.com/Gameye98/OWScan
        # santet-online
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling santet-online\e[0m"
        git clone https://github.com/Gameye98/santet-online
        # SpazSMS
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling SpazSMS\e[0m"
        git clone https://github.com/Gameye98/SpazSMS
        # Hasher
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling Hasher\e[0m"
        git clone https://github.com/ciku370/hasher
        # Hash-Generator
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling Hash-Generator\e[0m"
        git clone https://github.com/ciku370/hash-generator
        # ko-dork
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling ko-dork\e[0m"
        git clone https://github.com/ciku370/ko-dork
        # snitch
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling snicth\e[0m"
        git clone https://github.com/Smaash/snitch
        # OSIF
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling OSIF\e[0m"
        git clone https://github.com/ciku370/OSIF
        # nk26
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling nk26\e[0m"
        git clone https://github.com/~
        # Devploit
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling Devploit\e[0m"
        git clone https://github.com/GhettoCole/Devploit
        # Hasherdotid
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling Hasherdotid\e[0m"
        git clone https://github.com/galauerscrew/hasherdotid
        # Namechk
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Namechk\e[0m"
        git clone https://github.com/HA71/Namechk
        # xl-py
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling xl-py\e[0m"
        git clone https://github.com/albertoanggi/xl-py
        # BeanShell
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling Beanshell\e[0m"
        mkdir -p beanshell
        wget https://github.com/amsitlab/amsitlab.github.io/raw/master/dists/termux/amsitlab/binary-all/beanshell_2.04_all.deb
        dpkg -i beanshell_2.04_all.deb
        rm beanshell_2.04_all.deb
        # MSF-pg
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling MSF-pg\e[0m"
        git clone https://github.com/haxzsadik/MSF-Pg
        # Crunch
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling Crunch\e[0m"
        apt install crunch
        # Binary Exploitation
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling Binary Exploitation\e[0m"
        apt install gdb radare2 ired ddrescue bin-utils yasm strace ltrace cdb hexcurse memcached llvmdb
        echo -e "\e[1;77m[#] Tutorial: https://youtu.be3NTXFUxcKPc\e[0m"
        # Textr
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Textr\e[0m"
        mkdir -p textr
        wget https://raw.githubusercontent.com/amsitlab/textr/master/textr_1.0_all.deb
        dpkg -i textr_1.0_all.deb
        rm textr_1.0_all.deb
        # ApSca
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling ApSca\e[0m"
        mkdir -p ApSca
        wget https://raw.githubusercontent.com/BlackHoleSecurity/apsca/master/apsca_0.1_all.deb
        dpkg -i apsca_0.1_all.deb
        rm apsca_0.1_all.deb
        # amox
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling amox\e[0m"
        mkdir -p amox
        wget https://gitlab.com/dtlily/amox/raw/master/amox_1.0_all.deb
        dpkg -i amox_1.0_all.deb
        rm amox_1.0_all.deb
        # FaDe
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling FaDe\e[0m"
        git clone https://github.com/Gameye98/FaDe
        # GINF
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling GINF\e[0m"
        git clone https://github.com/Gameye98/GINF
        # AUXILE
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling AUXILE\e[0m"
        git clone https://github.com/CiKu370/AUXILE
        # inther
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling inther\e[0m"
        git clone https://github.com/Gameye98/inther
        # HPB
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling HPB\e[0m"
        mkdir -p HPB
        wget https://raw.githubusercontent.com/Cvar1984/HPB/master/html_0.1_all.deb
        dpkg -i html_0.1_all.deb
        rm html_0.1_all.deb
        # FMBrute
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling FMBrute\e[0m"
        git clone https://github.com/BlackHoleSecurity/FMBrute
        # HashID
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling HashID\e[0m"
        apt install python2 && python2 -m pip install hashid
        # GPS Tracking
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling GPS Tracking\e[0m"
        git clone https://github.com/indosecid/info_gath
        # PRET
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling PRET\e[0m"
        git clone https://github.com/RUB-NDS/PRET
        # AutoVisitor
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling AutoVisitor\e[0m"
        git clone https://github.com/wannabeee/AutoVisitor
        # Atlas
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling Atlas\e[0m"
        git clone https://github.com/m4ll0k/Atlas
        # LiteOTP
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling LiteOTP\e[0m"
        mkdir -p LiteOTP
        wget https://raw.githubusercontent.com/Cvar1984/LiteOTP/master/build/main.phar -O $PREFIX/bin/lite
        # FBBrute
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling FBBrute\e[0m"
        git clone https://github.com/Gameye98/FBBrute
        # fim
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling fim\e[0m"
        git clone https://github.com/karjok/fim
        # RShell
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling RShell\e[0m"
        git clone https://github.com/Jishu-Epic/RShell
        # TermPyter
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling TermPyter\e[0m"
        git clone https://github.com/Jishu-Epic/TermPyter
        # MaxSubdoFinder
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling MaxSubdoFinder\e[0m"
        git clone https://github.com/maxteroit/MaxSubdoFinder
        # jadx
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling jadx\e[0m"
        mkdir -p jadx
        wget https://github.com/Lexiie/Termux-Jadx/blob/master/jadx-0.6.1_all.deb?raw=true
        dpkg -i jadx-0.6.1_all.deb?raw=true
        rm -rf jadx-0.6.1_all.deb?raw=true
        # pwnedOrNot
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling pwnedOrNot\e[0m"
        git clone https://github.com/thewhiteh4t/pwnedOrNo
        # Mac-Lokup
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling Mac-Lokup\e[0m"
        git clone https://github.com/T4P4N/Mac-Lookup
        # F4K3
        echo -e "\e[0m[\e[1;91m!\e[0m] \e[1;77mInstalling F4K3\e[0m"
        mkdir -p F4K3
        wget https://github.com/Gameye98/Gameye98.github.io/blob/master/package/f4k3_1.0_all.deb
        dpkg -i f4k3_1.0_all.deb
        rm -rf f4k3_1.0_all.deb
        # Katak
        echo -e "\e[0m[\e[1;92m!\e[0m] \e[1;77mInstalling Katak\e[0m"
        git clone https://github.com/Gameye98/Katak
        # heroku
        echo -e "\e[0m[\e[1;93m!\e[0m] \e[1;77mInstalling heroku\e[0m"
        apt install nodejs
        apt install heroku
        # Google
        echo -e "\e[0m[\e[1;94m!\e[0m] \e[1;77mInstalling Google\e[0m"
        python -m pip install google
        # BillCipher
        echo -e "\e[0m[\e[1;95m!\e[0m] \e[1;77mInstalling BillCipher\e[0m"
        git clone https://github.com/GitHackTools/BillCipher
        # Virus & Zombie
        echo -e "\e[0m[\e[1;96m!\e[0m] \e[1;77mInstalling vbug\e[0m"
        git clone https://github.com/Gameye98/vbu
        sleep 1
            read -p $'\n\e[0m[\e[1;97m+\e[0m] Back to tools, Step By Step [Y/n] ' opt
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
