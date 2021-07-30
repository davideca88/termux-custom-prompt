#!/data/data/com.termux/files/usr/bin/bash

# Script made by Davideca
# Github profile:  <https://github.com/davideca27>
# YouTube Channel: <https://youtube.com/Davideca>
# Made on Termux 0.117 | Bash 5.1.8
# 2021/07/30

echo -e "\n\e[1;32mPROMPT\e[0m"
echo "Enter the first name: (before @)"
    read NAME1 #reading first name

echo " "

echo "Enter the second name: (after @)"
    read NAME2 #reading second name
    
echo " "
echo " "
echo "Available prompts: "
echo " "

echo -e "   [1] Ubuntu: \e[1;32m$NAME1@$NAME2\e[0;37m:\e[36m~/storage\e[37m\$" ; echo -n -e "\e[0m"

    UBUNTU="PS1=\"\[\e[1;32m\]$NAME1@$NAME2\[\e[0;37m\]:\[\e[36m\]\w\[\e[37m\]\$ \""
    #creating variable for Ubuntu PS1

echo -e "   [2] Kali (old): \e[1;31m$NAME1@$NAME2\e[0;37m:\e[34m~/storage\e[37m\$ " ; echo -e -n "\e[0m"

    KALI="PS1=\"\[\e[1;31m\]$NAME1@$NAME2\[\e[0;37m\]:\[\e[34m\]\w\e[37m\]\$ \""
   #creating variable for Kali PS1

echo -e "   [3] Arch: [$NAME1@$NAME2 storage]\$"
    ARCH="PS1=\"[$NAME1@$NAME2 \W]\$ \""
    #creating variable for Arch PS1

echo " "

echo -n "Choose one: "
    read RESP #reading response
 
 #removing old PS1 from bash.bashrc
 sed -i '/PS1/d' /data/data/com.termux/files/usr/etc/bash.bashrc
  
case $RESP in #switch case command

    1) echo $UBUNTU >> /data/data/com.termux/files/usr/etc/bash.bashrc ;;
       #putting UBUNTU variable in bash.bashrc file
       
    2) echo $KALI >> /data/data/com.termux/files/usr/etc/bash.bashrc ;;
       #putting KALI variable in bash.bashrc file

    3) echo $ARCH >> /data/data/com.termux/files/usr/etc/bash.bashrc ;;
       #puttinf ARCH variable in bash.bashrc file
       
    *) echo -e "\n\e[1;31mINVALID OPTION\e[0m" ;;
esac
