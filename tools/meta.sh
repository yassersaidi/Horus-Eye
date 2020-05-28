#!bin/env bash
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
rm -r class.txt resources.arsc AndroidManifest.xml metasploit.apk 
