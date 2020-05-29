#!bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
cd .. 
printf "\033[0;32m[#] Start Building ...\n\n"
apktool b xline -o metasploit.apk > /dev/null;
printf "\n"
unzip metasploit.apk > /dev/null;
mv classes.dex class.txt
toz=$(grep -a "tcp://" class.txt)
if [[ $toz == "" ]];then
printf ""
elif [[ $toz != "" ]];then
printf "\n"
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m Found : \033[1;37m($toz)\n\n"
fi
toz_1=$(grep -a "http://" class.txt)
if [[ $toz_1 == "" ]];then
printf ""
elif [[ $toz_1 != "" ]];then
printf "\n"
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m Found : \033[1;37m($toz_1)\n\n"
fi
toz_2=$(grep -a "https://" class.txt)
if [[ $toz_2 == "" ]];then
printf ""
elif [[ $toz_2 != "" ]];then
printf "\n"
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m Found : \033[1;37m($toz_2)\n\n"
fi
rm -r class.txt resources.arsc AndroidManifest.xml metasploit.apk  
