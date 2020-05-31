#!bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
cd .. 
printf "\033[0;32m[#] Start Building ...\n\n"
apktool b xline -o metasploit.apk > /dev/null;
printf "\n"
unzip metasploit.apk > /dev/null;
toz=$(grep -a "tcp://" classes.dex | cut -d '/' -f2- | tr -d '\0' |tr -d "/,")
if [[ $toz == "" ]];then
printf ""
elif [[ $toz != "" ]];then
printf "\n"
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m Found : \033[1;37m($toz)\n\n"
fi
http=$(grep -a "http://" classes.dex | cut -d '/' -f2- | tr -d '\0' |tr -d "/,")
if [[ $http == "" ]];then
printf ""
elif [[ $http != "" ]];then
printf "\n"
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m Found : \033[1;37m($http)\n\n"
fi
https=$(grep -a "https://" classes.dex | cut -d '/' -f2- | tr -d '\0' |tr -d "/,")
if [[ $https == "" ]];then
printf ""
elif [[ $https != "" ]];then
printf "\n"
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m Found : \033[1;37m($https)\n\n"
fi
rm -r classes.dex resources.arsc AndroidManifest.xml metasploit.apk  
