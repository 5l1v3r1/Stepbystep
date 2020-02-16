#!/usr/bin/bash
# Stepbystep
# Coded by Nedi Senja
# Github: https://github.com/stepbystepexe/Stepbystep
checkroot(){
if [[ "$(id -u)" -ne 0 ]]; then
    printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mMohon, jalankan program root!\n\n\e[0m"
    exit 1
fi
}
checktor() {
check=$(curl --socks5-hostname localhost:9050 -s https://www.google.com > /dev/null; echo $?)
if [[ "$check" -gt 0 ]]; then
    printf "\e[1;91mMohon, anda cek koneksi TOR! dengan tipe \"tor\" or \"service tor start\"\n\e[0m"
    exit 1
fi
}
clearscreen(){
    clear
    reset
    sleep 1
}
dependencies(){
    command -v bash > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Bash belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v curl > /dev/null 2>&1 || { echo >&2 "Sepertinya paket cURL belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v wget > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Wget belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v openssl > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Openssl belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v tor > /dev/null 2>&1 || { echo >&2 "Sepertinya paket TOR belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    command -v git > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Git belum terinstall. Jalankan ./install.sh. sekarang."; exit 1; }
    if [ $(ls /dev/urandom >/dev/null; echo $?) == "1" ]; then
        echo "/dev/urandom tidak ditemukan!"
    exit 1
fi
}

load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\r\e[0m[\e[1;32m%-${barlength}s\e[0m]\e[00m" "${bar:0:n}"
        printf "  \e[1;77mLOADING...!\e[0m "
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
banner(){
printf "\n\e[0m
  \e[0;36;2m██░▀██████████████▀░██   \e[0;31m█▀▀ \e[0;33m▀█▀ \e[0;34m█▀▀ \e[0;32m█▀█   \e[0;36m█▀▀ \e[0;93m▀█▀ \e[0;35m█▀▀ \e[0;37m█▀█
  \e[0;36;2m█▌▒▒░████████████░▒▒▐█   \e[0;31m▀▀█ \e[0;33m █  \e[0;34m█▀▀ \e[0;32m█▀▀   \e[0;36m▀▀█ \e[0;93m █  \e[0;35m█▀▀ \e[0;37m█▀▀
  \e[0;36;2m█░▒▒▒░██████████░▒▒▒░█   \e[0;31m▀▀▀ \e[0;33m ▀  \e[0;34m▀▀▀ \e[0;32m▀  \e[0mBY \e[0;36m▀▀▀ \e[0;93m ▀  \e[0;35m▀▀▀ \e[0;37m▀
  \e[0;36;2m▌░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▐
  \e[0;36;2m░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░    \e[0m[\e[1;96;2m01\e[0m] \e[1;77mInformation Gathering\e[0m
 \e[0;36;2m███▀▀▀██▄▒▒▒▒▒▒▒▄██▀▀▀██   \e[0m[\e[1;96;2m02\e[0m] \e[1;77mVulnerability Assessment\e[0m
 \e[0;36;2m██░░░▐█░▀█▒▒▒▒▒█▀░█▌░░░█   \e[0m[\e[1;96;2m03\e[0m] \e[1;77mStress Testing\e[0m
 \e[0;36;2m▐▌░░░▐▄▌░▐▌▒▒▒▐▌░▐▄▌░░▐▌   \e[0m[\e[1;96;2m04\e[0m] \e[1;77mPassword Attacks\e[0m
  \e[0;36;2m█░░░▐█▌░░▌▒▒▒▐░░▐█▌░░█    \e[0m[\e[1;96;2m05\e[0m] \e[1;77mWeb Hacking\e[0m\e[0m
  \e[0;36;2m▒▀▄▄▄█▄▄▄▌░▄░▐▄▄▄█▄▄▀▒    \e[0m[\e[1;96;2m06\e[0m] \e[1;77mExploitation Tools\e[0m
  \e[0;36;2m░░░░░░░░░░└┴┘░░░░░░░░░    \e[0m[\e[1;96;2m07\e[0m] \e[1;77mSniffing & Spoofing\e[0m
  \e[0;36;2m██▄▄░░░░░░░░░░░░░░▄▄██    \e[0m[\e[1;96;2m08\e[0m] \e[1;77mOther\e[0m
  \e[0;36;2m████████▒▒▒▒▒▒████████
  \e[0;36;2m█▀░░███▒▒░░▒░░▒▀██████    \e[0m[\e[1;93m&\e[0m] LISENSI
  \e[0;36;2m█▒░███▒▒╖░░╥░░╓▒▐█████    \e[0m[\e[1;94m#\e[0m] Informasi
  \e[0;36;2m█▒░▀▀▀░░║░░║░░║░░█████    \e[0m[\e[1;92m*\e[0m] Perbarui
  \e[0;36;2m██▄▄▄▄▀▀┴┴╚╧╧╝╧╧╝┴┴███    \e[0m[\e[1;91m-\e[0m] Keluar

  \e[0;1;100;77m[=    v4.4, Beta    =]\e[0m   "
}
menu(){
    read -p $' \e[0m[\e[1;95m/\e[0m] \e[1;77mMasukan opsi: \e[0m\en' option
        if [[ $option == 01 || $option == 1 ]]; then
        infoga
            elif [[ $option == 02 || $option == 2 ]]; then
            vulner
                elif [[ $option == 03 || $option == 3 ]]; then
                testing
                    elif [[ $option == 04 || $option == 4 ]]; then
                    attacks
                        elif [[ $option == 05 || $option == 5 ]]; then
                        hijack
                            elif [[ $option == 06 || $option == 6 ]]; then
                            exploit
                                elif [[ $option == 07 || $option == 7 ]]; then
                                sniper
                                    elif [[ $option == 08 || $option == 8 ]]; then
                                    other
                    elif [[ $option == '&' ]]; then
                    echo
                    nano LICENSE
                    echo
                    clearscreen
                    banner
                    menu
                    elif [[ $option == '#' ]]; then
                    echo
                    informasi
                    echo
                    elif [[ $option == '*' ]]; then
                    echo
                    git pull origin master
                    echo
                    read -p $'\e[0m[\e[92m Tekan Enter \e[0m]'
                    clearscreen
                    banner
                    menu
                    elif [[ $option == '-' ]]; then
                    echo
                    printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mKeluar dari program!\n\e[0m"
                    echo
                    exit 1
                elif [[ $option == './install.sh' ]]; then
                load
                echo
                sleep 1
                cd $HOME/stepbystep
                bash install.sh
        else
            echo
            printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
            echo
            sleep 1
            clearscreen
            banner
            menu
    fi
}
informasi(){
clear
printf "\e[0;1;47;90m[             Stepbystep, My Github: @stepbystepexe             ]\e[0m\n"
toilet -f smslant 'StepByStep'
printf "
Nama        : Stepbystep
Versi       : 4.4 (Update: 17 November 2020, 6:30 PM)
Tanggal     : 07 Mei 2019
Author      : Nedi Senja
Tujuan      : Sengaja di encrypt biar simpel
              kumpulan tool termux
Terimakasih : Allah SWT.
              FR13NDS, & seluruh
              manusia seplanet bumi
NB          : Manusia gax ada yang sempurna
              sama kaya tool ini.
              Silahkan laporkan kritik atau saran
              Ke - Email: d_q16x@outlook.co.id
                 - WhatsApp: +62 8577-5433-901

[ \e[4mGunakan tool ini dengan bijak \e[0m]\n"
sleep 1
read -p $'\n\n\e[0m[ Tekan Enter ]' opt
    if [[ $opt = '' ]]; then
        clearscreen
        banner
        menu
    fi
}
infoga(){
    echo -e "\n"
    sleep 0.01
    printf "\e[0;41;77;1m[ INFORMATION GATHERING ]\e[0m\n"
    sleep 1.0
    printf "\e[0m[\e[1;92;2m01\e[0m] Nmap\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m02\e[0m] RED HAWK\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m03\e[0m] D-Tect\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m04\e[0m] sqlmap\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m05\e[0m] Infoga\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m06\e[0m] ReconDog\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m07\e[0m] AndroZenmap\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m08\e[0m] sqlmate\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m09\e[0m] AstraNmap\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m10\e[0m] WTF\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m11\e[0m] Easymap\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m12\e[0m] BlackBox\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m13\e[0m] XD3v\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m14\e[0m] Crips\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m15\e[0m] SIR\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m16\e[0m] EvilURL\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m17\e[0m] Striker\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m18\e[0m] Xshell\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m19\e[0m] OWScan\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m20\e[0m] OSIF\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m21\e[0m] Devploit\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m22\e[0m] Namechk\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m23\e[0m] AUXILE\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m24\e[0m] Inther\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m25\e[0m] GINF\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m26\e[0m] GPS Tracking\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m27\e[0m] ASU\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m28\e[0m] FIM\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m29\e[0m] MaxSubdoFinder\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m30\e[0m] PwnedOrNot\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m31\e[0m] Mac-Lookup\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m32\e[0m] BillCypher\n"
    sleep 0.03
    printf "\e[0m[\e[1;92;2m00\e[0m] Kembali ke menu\n"
    sleep 1
    read -p $'\n\e[0m[\e[1;97m+\e[0m] \e[1;77mMasukan opsi: \e[0m\en' infoga
        if [[ $infoga == '01' || $infoga == '1' ]]; then
        load
        echo
        namp -h
        exit 1
            elif [[ $infoga == '02' || $infoga == '2' ]]; then
            load
            echo
            cd tools/RED_HAWK
            php rhawk.php
                elif [[ $infoga == '03' || $infoga == '3' ]]; then
                load
                echo
                cd tools/D-Tech
                python2 d-tect.py
                    elif [[ $infoga == '04' || $infoga == '4' ]]; then
                    load
                    echo
                    cd tools/sqlmap
                    ppython2 sqlmap.py
                        elif [[ $infoga == '05' || $infoga == '5' ]]; then
                        load
                        echo
                        cd tools/Infoga
                        python2 infoga.py
                    elif [[ $infoga == '06' || $infoga == '6' ]]; then
                    load
                    echo
                    cd tools/ReconDog
                    python2 dog
                elif [[ $infoga == '07' || $infoga == '7' ]]; then
                load
                echo
                cd tools/AndroZnemap
                bash androzenmap.sh
            elif [[ $infoga == '08' || $infoga == '8' ]]; then
            load
            echo
            cd tools/sqlmate
            python2 sqlmate.py
        elif [[ $infoga == '09' || $infoga == '9' ]]; then
        load
        echo
        cd tools/AstraNmap
        sh astranmap.sh
            elif [[ $infoga == '10' ]]; then
            load
            echo
            cd tools/Darkfly-Tool
            python2 darkfly.py
                elif [[ $infoga == '11' ]]; then
                load
                echo
                cd tools/Easymap
                sh install.sh
                    elif [[ $infoga == '12' ]]; then
                    load
                    echo
                    cd tools/blackbox
                    python2 blackbox.py
                        elif [[ $infoga == '13' ]]; then
                        load
                        echo
                        cd tools/xd3v
                        sh xd3v.sh
                            elif [[ $infoga == '14' ]]; then
                            load
                            echo
                            cd tools/Crips
                            python2 crips.py
                                elif [[ $infoga == '15' ]]; then
                                load
                                echo
                                cd tools/sir
                                pytgon2 sir.py
                                    elif [[ $infoga == '16' ]]; then
                                    load
                                    echo
                                    cd tools/EvilURL
                                    python3 evilurl.py
                                        elif [[ $infoga == '17' ]]; then
                                        load
                                        echo
                                        cd tools/Striker
                                        python3 striker.py
                                            elif [[ $infoga == '18' ]]; then
                                            load
                                            echo
                                            cd tools/Xshell
                                            python3 xshell.py
                                        elif [[ $infoga == '19' ]]; then
                                        load
                                        echo
                                        cd tools/OWScan
                                        php owscan.php
                                    elif [[ $infoga == '20' ]]; then
                                    load
                                    echo
                                    cd tools/OSIF
                                    python2 osif.py
                                elif [[ $infoga == '21'  ]]; then
                                load
                                echo
                                cd tools/Devploit
                                bash install
                            elif [[ $infoga == '22' ]]; then
                            load
                            echo
                            cd tools/Namechk
                            bash namechk.sh
                        elif [[ $infoga == '23' ]]; then
                        load
                        echo
                        cd tools/AUXILE
                        python2 Auxile.py
                    elif [[ $infoga == '24' ]]; then
                    load
                    echo
                    cd tools/inther
                    ruby inther.rb
                elif [[ $infoga == '25' ]]; then
                load
                echo
                cd tools/GINF
                php ginf.php
            elif [[ $infoga == '26' ]]; then
            load
            echo
            cd tools/info_gath
            php info_gath.php
        elif [[ $infoga == '27' ]]; then
        load
        echo
        cd tools/ASU
        python3 ASU.py
            elif [[ $infoga == '28' ]]; then
            load
            echo
            cd tools/fim
            python fim.py
                elif [[ $infoga == '29' ]]; then
                load
                echo
                cd tools/MaxSubdoFinder
                python2 maxteroit.py
                    elif [[ $infoga == '30' ]]; then
                    load
                    echo
                    cd tools/pwnedOrNot
                    python3 pwnedornot.py
                        elif [[ $infoga == '31' ]]; then
                        load
                        echo
                        cd tools/Mac-Lookup
                        python mac.py
                            elif [[ $infoga == '32' ]]; then
                            load
                            echo
                            cd tools/BillCipher
                            python billcipher.py
                elif [[ $infoga == '00' || $infoga == '0' ]]; then
                echo
                printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mKembali ke menu!\n\e[0m"
                echo
                sleep 1
                clearscreen
                banner
                menu
        else
            echo
            printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
            echo
            sleep 1
            clear
            reset
            banner
            infoga
    fi
}
vulner(){
    echo -e "\n"
    sleep 0.01
    printf "\e[0;42;90;1m[ VULNERABILITY SCANNER ]\e[0m\n"
    sleep 1.0
    printf "\e[0m[\e[1;91m01\e[0m] Nmap\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m02\e[0m] AndroZenmap\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m03\e[0m] AstraNmap\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m04\e[0m] Easymap\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m05\e[0m] RED HAWK\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m06\e[0m] D-Tect\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m07\e[0m] Damn Small SQLi Scanner\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m08\e[0m] SQLiv\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m09\e[0m] sqlmap\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m10\e[0m] sqlscan\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m11\e[0m] Wordpresscan\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m12\e[0m] WPScan\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m13\e[0m] sqlmate\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m14\e[0m] WTF\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m15\e[0m] Rang3r\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m16\e[0m] Striker\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m17\e[0m] Routersploit\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m18\e[0m] Xshell\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m19\e[0m] SH33LL\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m20\e[0m] BlackBox\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m21\e[0m] XAttacker\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m22\e[0m] OWScan\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m00\e[0m] Kembali ke menu\n"
    sleep 1
    read -p $'\n\e[0m[\e[1;97m+\e[0m] \e[1;77mMasukan opsi: \e[0m\en' vulner
        if [[ $vulner == '01' || $vulner == '1' ]]; then
        load
        echo
        nmap -h
        exit 1
            elif [[ $vulner == '02' || $vulner == '2' ]]; then
            load
            echo
            cd tools/AndroZnemap
            bash androzenmap.sh
                elif [[ $vulner == '03' || $vulner == '3' ]]; then
                load
                echo
                cd tools/AstraNmap
                sh astranmap.sh
                    elif [[ $vulner == '04' || $bulner == '4' ]]; then
                    load
                    echo
                    cd tools/Easymap
                    bash install.sh
                        elif [[ $vulner == '05' || $vulner == '5' ]]; then
                        load
                        echo
                        cd tools/RED_HAWK
                        php rhawk.php
                    elif [[ $vulner == '06' || $vulner == '6' ]]; then
                    load
                    echo
                    cd tools/D-Tech
                    python2 d-tect.py
                elif [[ $vulner == '07' || $vulner == '7' ]]; then
                load
                echo
                cd tools/DSSS
                python3 dsss.py
            elif [[ $vulner == '08' || $vulner == '8' ]]; then
            load
            echo
            cd tools/sqliv
            python sqliv.py
        elif [[ $vulner == '09' || $vulner == '9' ]]; then
        load
        echo
        cd tools/sqlmap
        python2 sqlmap.py
            elif [[ $vulner == '10' ]]; then
            load
            echo
            cd tools/sqlscan
            php main.php
                elif [[ $vulner == '11' ]]; then
                load
                echo
                cd tools/Wordpresscan
                python wordpresscan.py
                    elif [[ $vulner == '12' ]]; then
                    load
                    echo
                    cd tools/wpscan
                    ls
                        elif [[ $vulner == '13' ]]; then
                        load
                        echo
                        cd tools/sqlmate
                        python2 sqlmate
                            elif [[ $vulner == '14' ]]; then
                            load
                            echo
                            cd tools/Darkfly-Tool
                            python2 darkfly.py
                                elif [[ $vulner == '15' ]]; then
                                load
                                echo
                                cd rang3r
                                python rang3r.py
                            elif [[ $vulner == '16' ]]; then
                            load
                            echo
                            cd tools/Striker
                            python3 striker.py
                        elif [[ $vulner == '17' ]]; then
                        load
                        echo
                        cd routersploit
                        python3 rsf.py
                    elif [[ $vulner == '18' ]]; then
                    load
                    echo
                    cd tools/Xshell
                    python3 xshell.py
                elif [[ $vulner == '19' ]]; then
                load
                echo
                cd tools/SH33LL
                python sh33l.py
            elif [[ $vulner == '20' ]]; then
            load
            echo
            cd tools/blackbox
            python2 blackbox.py
                elif [[ $vulner == '21' ]]; then
                load
                echo
                cd XAttacker
                perl XAttacker
                    elif [[ $vulner == '22' ]]; then
                    load
                    echo
                    cd tools/OWScan
                    php owscan.php
                elif [[ $vulner == '00' || $vulner == '0' ]]; then
                echo
                printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mKembali ke menu!\n\e[0m"
                echo
                sleep 1
                clearscreen
                banner
                menu
        else
            echo
            printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
            echo
            sleep 1
            clear
            reset
            banner
            vulner
    fi
}
testing(){
    echo -e "\n"
    sleep 0.01
    printf "\e[0;43;90;1m[ STRESS TESTING ]\e[0m\n"
    sleep 1.0
    printf "\e[0m[\e[1;94m01\e[0m] Torshammer\n"
    sleep 0.03
    printf "\e[0m[\e[1;94m02\e[0m] Fl00d & Fl00d2\n"
    sleep 0.03
    printf "\e[0m[\e[1;94m03\e[0m] GoldenEye\n"
    sleep 0.03
    printf "\e[0m[\e[1;94m04\e[0m] Xerxes\n"
    sleep 0.03
    printf "\e[0m[\e[1;94m05\e[0m] Planetwork-DDOS\n"
    sleep 0.03
    printf "\e[0m[\e[1;94m06\e[0m] Hydra\n"
    sleep 0.03
    printf "\e[0m[\e[1;94m07\e[0m] Black Hydra\n"
    sleep 0.03
    printf "\e[0m[\e[1;94m08\e[0m] Xshell\n"
    sleep 0.03
    printf "\e[0m[\e[1;94m09\e[0m] Santet-Online\n"
    sleep 0.03
    printf "\e[0m[\e[1;94m00\e[0m] Kembali ke menu\n"
    sleep 1
    read -p $'\n\e[0m[\e[1;97m+\e[0m] \e[1;77mMasukan opsi: \e[0m\en' testing
        if [[ $testing == '01' || $testing == '1' ]]; then
        load
        echo
        cd tools/torshammer
        python torshammer.py
            elif [[ $testing == '02' || $testing == '2' ]]; then
            load
            echo
            cd tools/fl00d
            python2 fl00d.py
                elif [[ $testing == '03' || $testing == '3' ]]; then
                load
                echo
                cd tools/GoldenEye
                python3 goldeneye.py
                    elif [[ $testing == '04' || $testing == '4' ]]; then
                    load
                    echo
                    cd tools/xerxes
                    clang xerxes.c
                        elif [[ $testing == '05' || $testing == '5' ]]; then
                        load
                        echo
                        cd tools/Planetwork-DDOS
                        python2 pntddos.py
                    elif [[ $testing == '06' || $testing == '6' ]]; then
                    load
                    echo
                    hydra -h
                    exit 1
                elif [[ $testing == '07' || $testing == '7' ]]; then
                load
                echo
                cd tools/blackhydra
                python2 blackhydra.py
            elif [[ $testing == '08' || $testing == '8' ]]; then
            load
            echo
            cd tools/Xshell
            python3 xshell.py
        elif [[ $testing == '09' || $testing == '9' ]]; then
        load
        echo
        cd tools/santet-online
        python2 santet.py
                elif [[ $testing == '00' || $testing == '0' ]]; then
                echo
                printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mKembali ke menu!\n\e[0m"
                echo
                sleep 1
                clearscreen
                banner
                menu
        else
            echo
            printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
            echo
            sleep 1
            clear
            reset
            banner
            testing
    fi
}
attacks(){
    echo -e "\n"
    sleep 0.01
    printf "\e[0;44;77;1m[ PASSWORD ATTACKS ]\e[0m\n"
    sleep 1.0
    printf "\e[0m[\e[1;93m01\e[0m] Hydra\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m02\e[0m] FMBrute\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m03\e[0m] HashID\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m04\e[0m] Facebook Brute Force 3\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m05\e[0m] Black Hydra\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m06\e[0m] Hash Buster\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m07\e[0m] FBBrute\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m08\e[0m] Cupp\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m09\e[0m] InstaHack\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m10\e[0m] Indonesian Wordlist\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m11\e[0m] Xshell\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m12\e[0m] Social-Engineering\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m13\e[0m] BlackBox\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m14\e[0m] Multiface\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m15\e[0m] Hasher\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m16\e[0m] Hash-Generator\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m17\e[0m] nk26\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m18\e[0m] Hasherdotid\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m19\e[0m] Crunch\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m20\e[0m] Darkroom\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m21\e[0m] ASU\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m22\e[0m] Katak\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m23\e[0m] Facecracks\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m00\e[0m] Kembali ke menu\n"
    sleep 1
    read -p $'\n\e[0m[\e[1;97m+\e[0m] \e[1;77mMasukan opsi: \e[0m\en' attacks
        if [[ $attacks == '01' || $attacks == '1' ]]; then
        load
        echo
        hydra -h
        exit 1
            elif [[ $attacks == '02' || $attacks == '2' ]]; then
            load
            echo
            cd tools/FMBrute
            python fmbrute.pu
                elif [[ $attacks == '03' || $attacks == '3' ]]; then
                load
                echo
                hashid -h
                exit 1
                    elif [[ $attacks == '04' || $attacks == '4' ]]; then
                    load
                    echo
                    cd tools/facebook-brute-3
                    python2 facebook3.py
                        elif [[ $attacks == '05' || $attacks == '5' ]]; then
                        load
                        echo
                        cd tools/blackhydra
                        python2 blackhydra.py
                    elif [[ $attacks == '06' || $attacks == '6' ]]; then
                    load
                    echo
                    cd tools/Hash-Buster
                    python3 hash.py
                elif [[ $attacks == '07' || $attacks == '7' ]]; then
                load
                echo
                cd tools/FBBrute
                python fbbrute.py
            elif [[ $attacks == '08' || $attacks == '8' ]]; then
            load
            echo
            cd tools/cupp
            python3 cupp.py
        elif [[ $attacks == '09' || $attacks == '9' ]]; then
        load
        echo
        cd tools/instshell
        bash instashell.sh
            elif [[ $attacks == '10' ]]; then
            load
            echo
            cd tools/indonesian-wordlist
            ls
                elif [[ $attacks == '11' ]]; then
                load
                echo
                cd tools/Xshell
                python3 xshell.py
                    elif [[ $attacks == '12' ]]; then
                    load
                    echo
                    cd tools/BlackEngineer
                    python3 BlackEngineer.py
                        elif [[ $attacks == '13' ]]; then
                        load
                        echo
                        cd tools/blackbox
                        python2 blackbox.py
                            elif [[ $attacks == '14' ]]; then
                            load
                            echo
                            cd tools/Multiface
                            python2 multiface.py
                                elif [[ $attacks == '15' ]]; then
                                load
                                echo
                                cd tools/hasher
                                python2 hash.py
                                    elif [[ $attacks == '16' ]]; then
                                    load
                                    echo
                                    cd tools/hash-generator
                                    python2 hashgen.py
                                        elif [[ $attacks == '17' ]]; then
                                        load
                                        echo
                                        cd tools/nk26
                                        php nk26.php
                                            elif [[ $attacks == '18' ]]; then
                                            load
                                            echo
                                            cd tools/hasherdotid
                                            python2 hasherdotid.py
                                                elif [[ $attacks == '19' ]]; then
                                                load
                                                echo
                                                crunch -h
                                                exit 1
                                            elif [[ $attacks == '20' ]]; then
                                            load
                                            echo
                                            cd tools/Darkroom
                                            python2 darkroom.py
                                        elif [[ $attacks == '21' ]]; then
                                        load
                                        echo
                                        cd tools/ASU
                                        python2 ASU.py
                                    elif [[ $attacks == '22' ]]; then
                                    load
                                    echo
                                    cd tools/Katak
                                    python katak.py
                                elif [[ $attacks == '22' ]]; then
                                load
                                echo
                                cd tools/Facecracks
                                python2 facecracks.py
                elif [[ $attacks == '00' || $attacks == '0' ]]; then
                echo
                printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mKembali ke menu!\n\e[0m"
                echo
                sleep 1
                clearscreen
                banner
                menu
        else
            echo
            printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
            echo
            sleep 1
            clear
            reset
            banner
            attacks
    fi
}
hijack(){
    echo -e "\n"
    sleep 0.01
    printf "\e[0;45;77;1m[ WEB HACKING ]\e[0m\n"
    sleep 1.0
    printf "\e[0m[\e[1;96m01\e[0m] sqlmap\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m02\e[0m] Webdav\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m03\e[0m] xGans\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m04\e[0m] Webdav Mass Exploit\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m05\e[0m] WPSploit\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m06\e[0m] sqldum\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m07\e[0m] Websploit\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m08\e[0m] sqlmate\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m09\e[0m] Tebasindex\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m10\e[0m] Thefacesite\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m11\e[0m] Xshell\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m12\e[0m] SH33LL\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m13\e[0m] XAttacker\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m14\e[0m] XSStrike\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m15\e[0m] Breache\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m16\e[0m] OWScan\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m17\e[0m] Ko-Dork\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m18\e[0m] ApSca\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m19\e[0m] Amox\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m20\e[0m] FaDe\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m21\e[0m] AUXILE\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m22\e[0m] HPB\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m23\e[0m] Inther\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m24\e[0m] Atlas\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m25\e[0m] MaxSubdoFinder\n"
    sleep 0.03
    printf "\e[0m[\e[1;96m00\e[0m] Kembali ke menu\n"
    sleep 1
    read -p $'\n\e[0m[\e[1;97m+\e[0m] \e[1;77mMasukann opsi: \e[0m\en' hijack
        if [[ $hijack == '01' || $hijack == '1' ]]; then
        load
        echo
        cd tools/sqlmap
        python2 sqlmap.py
            elif [[ $hijack == '02' || $hijack == '2' ]]; then
            load
            echo
            cd tools/webdav
            python2 webdav.py
                elif [[ $hijack == '03' || $hijack == '3' ]]; then
                load
                echo
                cd tools/ohmyqr
                bash ohmyqr.sh
                    elif [[ $hijack == '04' || $hijack == '4' ]]; then
                    load
                    echo
                    cd tools/webdav-mass-exploit
                    ls
                        elif [[ $hijack == '05' || $hijack == '5' ]]; then
                        load
                        echo
                        cd tools/wpsploit
                        ls
                    elif [[ $hijack == '06' || $hijack == '6' ]]; then
                    load
                    echo
                    cd tools/sqldump
                    ./sqldump.py
                elif [[ $hijack == '07' || $hijack == '7' ]]; then
                load
                echo
                cd tools/websploit
                ls
            elif [[ $hijack == '08' || $hijack == '8' ]]; then
            load
            echo
            cd tools/sqlmate
            python2 sqlmate.py
        elif [[ $hijack == '09' || $hijack == '9' ]]; then
        load
        echo
        cd tools/Tebasindex
        bash tebasindex.sh
            elif [[ $hijack == '10' ]]; then
            load
            echo
            cd tools/Thefacesite
            python2 thefacesite.py
                elif [[ $hijack == '11' ]]; then
                load
                echo
                cd tools/Xshell
                python3 xshell.py
                    elif [[ $hijack == '12' ]]; then
                    load
                    echo
                    cd tools/SH33LL
                    python sh33l.py
                        elif [[ $hijack == '13' ]]; then
                        load
                        echo
                        cd tools/XAttacker
                        python3 XAttacker.py
                            elif [[ $hijack == '14' ]]; then
                            load
                            echo
                            cd tools/XSStrike
                            python3 xsstrike.py
                                elif [[ $hijack == '15' ]]; then
                                load
                                echo
                                cd tools/Breacher
                                python breacher
                                    elif [[ $hijack == '16' ]]; then
                                    load
                                    echo
                                    cd tools/OWScan
                                    php owscan.php
                                        elif [[ $hijack == '17' ]]; then
                                        load
                                        echo
                                        cd tools/ko-dork
                                        python2 dork.py
                                            elif [[ $hijack == '18' ]]; then
                                            load
                                            echo
                                            cd tools/ApSca
                                            ls
                                                elif [[ $hijack == '19' ]]; then
                                                load
                                                echo
                                                cd tools/amox
                                                ls
                                            elif [[ $hijack == '20' ]]; then
                                            load
                                            echo
                                            cd tools/FaDe
                                            python fade.py
                                        elif [[ $hijack == '21' ]]; then
                                        load
                                        echo
                                        cd tools/AUXILE
                                        python2 AUXILE.py
                                    elif [[ $hijack == '22' ]]; then
                                    load
                                    echo
                                    cd tools/HPB
                                    ls
                                elif [[ $hijack == '23' ]]; then
                                load
                                echo
                                cd tools/inther
                                ruby inther.rb
                                ls
                            elif [[ $hijack == '24' ]]; then
                            load
                            echo
                            cd tools/Atlas
                            python atlas.py
                        elif [[ $hijack == '25' ]]; then
                        load
                        echo
                        cd tools/MaxSubdoFinder
                        python2 maxteroit.py
                        ls
                elif [[ $hijack == '00' || $hijack == '0' ]]; then
                echo
                printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mKembali ke menu!\n\e[0m"
                echo
                sleep 1
                clearscreen
                banner
                menu
        else
            echo
            printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
            echo
            sleep 1
            clear
            reset
            banner
            hijack
    fi
}
exploit(){
    echo -e "\n"
    sleep 0.01
    printf "\e[0;46;90;1m[ EXPLOITATION TOOLS ]\e[0m\n"
    sleep 1.0
    printf "\e[0m[\e[1;91m01\e[0m] Metasploit\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m02\e[0m] Comix\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m03\e[0m] sqlmap\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m04\e[0m] Brutal\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m05\e[0m] A-Rat\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m06\e[0m] WPSploit\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m07\e[0m] Websploit\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m08\e[0m] BlackBox\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m09\e[0m] XAttacker\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m10\e[0m] TXTool\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m11\e[0m] MSF-pg\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m12\e[0m] Binary Exploitation\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m13\e[0m] ASU\n"
    sleep 0.03
    printf "\e[0m[\e[1;91m00\e[0m] Kembali ke menu\n"
    sleep 1
    read -p $'\n\e[0m[\e[1;97m+\e[0m] \e[1;77mMasukan opsi: \e[0m\en' exploit
        if [[ $exploit == '01' || $exploit == '1' ]]; then
        load
        echo
        msfconsole -h
        exit 1
            elif [[ $exploit == '02' || $exploit == '2' ]]; then
            load
            echo
            cd tools/commix
            python commix.py -h
                elif [[ $exploit == '03' || $exploit == '3' ]]; then
                load
                echo
                cd tools/sqlmap
                python2 sqlmap.py
                    elif [[ $exploit == '04' || $exploit == '4' ]]; then
                    load
                    echo
                    cd tools/Brutal
                    ls
                        elif [[ $exploit == '05' || $exploit == '5' ]]; then
                        load
                        echo
                        cd tools/A-Rat
                        python A-Rat.py
                    elif [[ $exploit == '06' || $exploit == '6' ]]; then
                    load
                    echo
                    cd tools/wpsploit
                    ls
                elif [[ $exploit == '07' || $exploit == '7' ]]; then
                load
                echo
                cd tools/websploit
                ls
            elif [[ $exploit == '08' || $exploit == '8' ]]; then
            load
            echo
            cd tools/blackbox
            python2 blackbox.py
            ls
        elif [[ $exploit == '09' || $exploit == '9' ]]; then
        load
        echo
        cd tools/XAttacker
        python3 XAttacker
            elif [[ $exploit == '10' ]]; then
            load
            echo
            cd tools/txtool
            ./install.py
            txtool
                elif [[ $exploit == '11' ]]; then
                load
                echo
                cd tools/MSF-pg
                chmod +x msf-pg setup.sh
                ./setup.sh
                    elif [[ $exploit == '12' ]]; then
                    load
                    echo
                    cd tools/binploit
                    echo -e "\e[1;77m[#] \e[77;1mTutorial: \e[0mhttps://youtu.be3NTXFUxcKPc\e[0m"
                        elif [[ $exploit == '13' ]]; then
                        load
                        echo
                        cd tools/ASU
                        python3 ASU.py
                elif [[ $exploit == '00' || $exploit == '0' ]]; then
                echo
                printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mKembali ke menu!\n\e[0m"
                echo
                sleep 1
                clearscreen
                banner
                menu
        else
            echo
            printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
            echo
            sleep 1
            clear
            reset
            banner
            exploit
    fi
}
sniper(){
    echo -e "\n"
    sleep 0.01
    printf "\e[0;103;90;1m[ SNIFFING & SPOOFING ]\e[0m\n"
    sleep 1.0
    printf "\e[0m[\e[1;92m01\e[0m] KnockMail\n"
    sleep 0.03
    printf "\e[0m[\e[1;92m02\e[0m] Examkill\n"
    sleep 0.03
    printf "\e[0m[\e[1;92m03\e[0m] Troll\n"
    sleep 0.03
    printf "\e[0m[\e[1;92m04\e[0m] Spammer-Grab\n"
    sleep 0.03
    printf "\e[0m[\e[1;92m05\e[0m] SocialFish\n"
    sleep 0.03
    printf "\e[0m[\e[1;92m06\e[0m] Santet-Online\n"
    sleep 0.03
    printf "\e[0m[\e[1;92m07\e[0m] SpazSMS\n"
    sleep 0.03
    printf "\e[0m[\e[1;92m08\e[0m] LiteOTP\n"
    sleep 0.03
    printf "\e[0m[\e[1;92m09\e[0m] ASU\n"
    sleep 0.03
    printf "\e[0m[\e[1;92m09\e[0m] HiddenEye\n"
    sleep 0.03
    printf "\e[0m[\e[1;92m00\e[0m] Kembali ke menu\n"
    sleep 1
    read -p $'\n\e[0m[\e[1;97m+\e[0m] \e[1;77mMasukan opsi: \e[0m\en' sniper
        if [[ $sniper == '01' || $sniper == '1' ]]; then
        load
        echo
        cd tools/KnockMail
        python knock.py
            elif [[ $sniper == '02' || $sniper == '2' ]]; then
            load
            echo
            cd tools/Examkill
            python2 examkill.py
                elif [[ $sniper == '03' || $sniper == '3' ]]; then
                load
                echo
                cd tools/troll_project
                bash troll.sh
                    elif [[ $sniper == '04' || $sniper == '4' ]]; then
                    load
                    echo
                    cd tools/Spamer-Grab
                    python2 spammer.py --help
                        elif [[ $sniper == '05' || $sniper == '5' ]]; then
                        load
                        echo
                        cd tools/SocialFish
                        python3 socialfish.py
                            elif [[ $sniper == '06' || $sniper == '6' ]]; then
                            load
                            echo
                            cd tools/santet-online
                            python2 santet.py
                                elif [[ $sniper == '07' || $sniper == '7' ]]; then
                                load
                                echo
                                cd tools/SpazSMS
                                ls
                            elif [[ $sniper == '08' || $sniper == '8' ]]; then
                            load
                            echo
                            cd tools/Grabspams
                            php grabspams.php
                        elif [[ $sniper == '09' || $sniper == '9' ]]; then
                        load
                        echo
                        cd tools/ASU
                        python3 ASU.py
                    elif [[ $sniper == '10' ]]; then
                    load
                    echo
                    cd tools/HiddenEye
                    python3 hiddeneye.py
                elif [[ $sniper == '00' || $sniper == '0' ]]; then
                echo
                printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mKembali ke menu!\n\e[0m"
                echo
                sleep 1
                clearscreen
                banner
                menu
        else
            echo
            printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
            echo
            sleep 1
            clear
            reset
            banner
            sniper
    fi
}
other(){
    echo -e "\n"
    sleep 0.01
    printf "\e[0;47;90;1m[ OTHER ]\e[0m\n"
    sleep 1.0
    printf "\e[0m[\e[1;93m01\e[0m] SpiderBot\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m02\e[0m] Ngrok\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m03\e[0m] Sudo\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m04\e[0m] Ubuntu\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m05\e[0m] Fedora\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m06\e[0m] Kali Nethunter\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m07\e[0m] VCRT\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m08\e[0m] Compilers\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m09\e[0m] Termux-Styling\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m10\e[0m] PassGen\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m11\e[0m] XL-py\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m12\e[0m] BeanShell\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m13\e[0m] WebConn\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m14\e[0m] Crunch\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m15\e[0m] Textr\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m16\e[0m] AutoVisitor\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m17\e[0m] RShell\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m18\e[0m] TermPyter\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m19\e[0m] Jadx\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m20\e[0m] F4K3\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m21\e[0m] Heroku\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m22\e[0m] Google\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m23\e[0m] vBug\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m24\e[0m] Keydroid\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m25\e[0m] WhatsHack\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m26\e[0m] Anonymous\n"
    sleep 0.03
    printf "\e[0m[\e[1;93m00\e[0m] Kembali ke menu\n"
    sleep 1
    read -p $'\n\e[0m[\e[1;97m+\e[0m] \e[1;77mMasukan opsi: \e[0m\en' other
        if [[ $other == '01' || $other == '1' ]]; then
        load
        echo
        cd tools/Spiderbot
        sh searchspider.sh
            elif [[ $other == '02' || $other == '2' ]]; then
            load
            echo
            cd tools/ngrok
            ls
                elif [[ $other == '03' || $other == '3' ]]; then
                load
                echo
                cd tools/tools/termux-sudo
                ls
                    elif [[ $other == '04' || $other == '4' ]]; then
                    load
                    echo
                    cd tools/termux-ubuntu
                    ls
                        elif [[ $other == '05' || $other == '5' ]]; then
                        load
                        echo
                        cd tools/frdora
                        ls
                    elif [[ $other == '06' || $other == '6' ]]; then
                    load
                    echo
                    cd tools/Nethunter-In-Termux
                    ls
                elif [[ $other == '07' || $other == '7' ]]; then
                load
                echo
                cd tools/Evil-create-framework
                sh install.sh
            elif [[ $other == '08' || $other == '8' ]]; then
            load
            echo
            cd tools/Compilers
            python2 compilers.py
        elif [[ $other == '09' || $other == '9' ]]; then
        load
        echo
        cd tools/Termux-Styling-Shell-Script
        bash termux-styling.sh
            elif [[ $other == '10' ]]; then
            load
            echo
            cd tools/PassGen
            python passgen.py smith
                elif [[ $other == '11' ]]; then
                load
                echo
                cd tools/xl-py
                python app.py
                    elif [[ $other == '12' ]]; then
                    load
                    echo
                    cd tools/beanshell
                    ls
                        elif [[ $other == '13' ]]; then
                        load
                        echo
                        cd tools/PRET
                        python2 pret.py -h
                            elif [[ $other == '14' ]]; then
                            load
                            echo
                            crunch -h
                            exit 1
                                elif [[ $other == '15' ]]; then
                                load
                                echo
                                cd tools/textr
                                ls
                                    elif [[ $other == '16' ]]; then
                                    load
                                    echo
                                    cd tools/AUTOVISITOR
                                    php autovisitor.php
                                        elif [[ $other == '17' ]]; then
                                        load
                                        echo
                                        cd tools/RShell
                                        python2 server.py
                                            elif [[ $other == '18' ]]; then
                                            load
                                            echo
                                            cd tools/TermPyter
                                            bash setup.sh
                                                elif [[ $other == '19' ]]; then
                                                load
                                                echo
                                                cd tools/jadx
                                                ls
                                            elif [[ $other == '20' ]]; then
                                            load
                                            echo
                                            cd tools/F4K3
                                            ls
                                        elif [[ $other == '21' ]]; then
                                        load
                                        echo
                                        heroku -h
                                        ls
                                    elif [[ $other == '22' ]]; then
                                    load
                                    echo
                                    cd tools/sqldump
                                    python2 sqldump.py
                                elif [[ $other == '23' ]]; then
                                load
                                echo
                                cd tools/vbug
                                python vbug.py
                            elif [[ $other == '23' ]]; then
                            load
                            echo
                            cd tools/vbug
                            python vbug.py
                        elif [[ $other == '24' ]]; then
                        load
                        echo
                        cd tools/keydroid
                        bash keydroid.sh
                    elif [[ $other == '25' ]]; then
                    load
                    echo
                    cd tools/whatshack
                    bash whatshack.sh
                elif [[ $other == '26' ]]; then
                load
                echo
                cd tools/Anonymous
                python2 anonymous.py
            elif [[ $other == '00' || $other == '0' ]]; then
            echo
            printf "\e[0m[\e[1;91m!\e[0m] \e[0;1;77mKembali ke menu!\n\e[0m"
            echo
            sleep 1
            clearscreen
            banner
            menu
        else
            echo
            printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
            echo
            sleep 1
            clear
            reset
            banner
            other
    fi
}
#checkroot
#checktor
#dependencies
    clearscreen
    banner
    menu
