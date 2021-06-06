#!/bin/bash

cd ..

echo "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄ 
█                                                                     █
█  ▀█▀ █▀▀ █▀▀ █▀▀ █▀▀█ █▀▀█ █▀▀ █▀▀█  █▀█  █▀▀█    ▒█  █ █▀▀ █▀▄▀█   █
█  ▒█░ █   █▀▀ █   █▄▄▀ █▄▄█ █     ▀▄ █▄▄█▄ █▄▄▀ ▀▀ ▒█▀▀█ █▀▀ █ ▀ █   █
█  ▄█▄ ▀▀▀ ▀▀▀ ▀▀▀ ▀ ▀▀ ▀  ▀ ▀▀▀ █▄▄█    █  ▀░▀▀    ▒█  █ ▀▀▀ ▀   ▀   █
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█   "

echo -e "\e[1;31m▄▄▄▄▄▄▄▄▄▄▄ Lets Upload <3 ▄▄▄▄▄▄▄▄▄▄▄\e[0m"

echo -e "\e[1;31m▄▄▄▄▄▄▄▄▄▄▄ For now only google drive , Android filehost & Mega.nz is supported for uploading ▄▄▄▄▄▄▄▄▄▄▄\e[0m"

echo -e "\e[1;36m|--> Do you want to upload to gdrive or mega or on Android file host developer's account? <--|\e[0m"

read -p " 
 1-Google Drive
 2-Android file host
 3-Mega.nz
 |--> 1 , 2 , 3 : " gdorafh
 
if [[ $gdorafh -eq 2 ]]

then

echo -e "\e[1;36m|--> IF YOU DONT HAVE AFH FTP ACCOUNT,MAIL THEM AND ASK FOR IT AFTER YOU MAKE DEVELOPER'S ACCOUNT  <--|\e[0m"

read -p "Device codename :- " codename1

cd out

cd target

cd product

cd $codename1

ls

echo -e "
Enter the name of the file that you want to upload \e[1;31m \e[0m"

read -p "Zip name :- " $zip1

echo "Okay, enter your FTP credentials"

read -p "Android file host username -" afhusr

read -p "FTP password -" afhpass

echo curl -T "$zip1" ftp://$afhusr:$afhpass@uploads.androidfilehost.com

echo -e "

\e[1;33m------ Rom uploaded, check your AFH ftp, Happy hardbricking :D ------
(\_/)         
( •_•)
/>    Kbye\e[0m

"

echo -e "\e[1;31m▄▄▄▄▄▄▄▄▄▄▄ Script by @icecrac34r_hem ▄▄▄▄▄▄▄▄▄▄▄\e[0m"

elif [[ gdorafh -eq 3 ]]

then 

echo -e "\e[1;36m|--> Do you have a mega account? or this is the first time you are running the script? <--|\e[0m"

read -p " 
 1-Signup (Mega account is not linked) -- 
 2-Mega account is already linked
 |--> 1 or 2 : " mnz
 
 if [[ $mnz -eq 1 ]]
 
then 

echo -e "
\e[1;33mInstalling MEGA.NZ tools \e[0m"

sudo apt-get install megatools

echo -e "
\e[1;33mAllright let's signup. Enter your mail and desired username \e[0m"

echo -e "
\e[1;34mEnter the valid mail because a verification link will be sent! YOU CAN USE TEMP MAIL FROM WEBSITE |--> mailto.plus  \e[0m"

read -p "|--> Mail id - " mail

read -p "|--> Desired USERNAME - " username

megareg --register --email $mail --name "$username" --password "@Icecrac34r_hem"

echo "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
       Mega Account Credentials-                  
   |--> Username- $username                       
   |--> Email- $mail                              
   |--> Password (SET BY DEFAULT) - @Icecrac34r_hem 
▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄   "

read -p "Device codename :- " codename1

cd out

cd target

cd product

cd $codename1

ls

echo -e "
Enter the name of the file that you want to upload \e[1;31m \e[0m"

read -p "Zip name :- " zip1

megaput $zip1 -u $mail

echo -e "

\e[1;33m------ Rom uploaded, check your MEGA.NZ ACCOUNT , Happy hardbricking :D ------
(\_/)         
( •_•)
/>    Kbye\e[0m

"
echo -e "
\e[1;31m▄▄▄▄▄▄▄▄▄▄▄ Script by @icecrac34r_hem ▄▄▄▄▄▄▄▄▄▄▄\e[0m"

else

echo -e "
\e[1;33mAllright let's upload \e[0m"

read -p "|--> Enter the registerd Mail id for Mega.nz - " mail

read -p "Device codename :- " codename1

cd out

cd target

cd product

cd $codename1

ls

echo -e "
Enter the name of the file that you want to upload \e[1;31m \e[0m"

read -p "Zip name :- " zip1

megaput $zip1 -u $mail

echo -e "

\e[1;33m------ Rom uploaded, check your MEGA.NZ ACCOUNT , Happy hardbricking :D ------
(\_/)         
( •_•)
/>    Kbye\e[0m

"

echo -e "\e[1;31m▄▄▄▄▄▄▄▄▄▄▄ Script by @icecrac34r_hem ▄▄▄▄▄▄▄▄▄▄▄\e[0m"

fi
 
else

echo -e "\e[1;36m|--> Did you authorize your google account before? or this is the first time you are running the script? <--|\e[0m"

read -p " 
 1-Uploading for the first time -- 
 2-I've enterd the verification code before 
 |--> 1 or 2 : " GDupload

if [[ $GDupload -eq 1 ]]

then

echo -e "
\e[1;31mOkay then! lets link your google account,simply open the given website in browser,copy the verification code and paste it here \e[0m"

wget https://raw.githubusercontent.com/usmanmughalji/gdriveupload/master/gdrive && chmod +x gdrive && sudo install gdrive /usr/local/bin/gdrive && gdrive list

read -p "Device codename :- " codename1

cd out

cd target

cd product

cd $codename1

ls

echo -e "
Enter the name of the file that you want to upload \e[1;31m \e[0m"

read -p "Zip name :- " zip1

gdrive upload $zip1

echo -e "

\e[1;33m------ Rom uploaded, check your google drive, Happy hardbricking :D ------
(\_/)         
( •_•)
/>    Kbye\e[0m

"

echo -e "\e[1;31m▄▄▄▄▄▄▄▄▄▄▄ Script by @icecrac34r_hem ▄▄▄▄▄▄▄▄▄▄▄\e[0m"

else

echo -e "\e[1;31mOkay then! lets Upload the compiled rom <3 \e[0m"

read -p "Device codename :- " codename1

cd out

cd target

cd product

cd $codename1

ls

echo -e "
Enter the name of the file that you want to upload \e[1;31m \e[0m"

read -p "Zip name :- " zip1

gdrive upload $zip1

echo -e "

\e[1;33m------ Rom uploaded, check your google drive, Happy hardbricking :D ------
(\_/)         
( •_•)
/>    Kbye\e[0m

"

echo -e "\e[1;31m▄▄▄▄▄▄▄▄▄▄▄ Script by @icecrac34r_hem ▄▄▄▄▄▄▄▄▄▄▄\e[0m"

fi

fi


