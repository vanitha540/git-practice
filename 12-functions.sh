#!/bin/bash

USERID=$(id -u)

echo "User ID is: $USERID"

VALIDATE(){
       echo "exit status: $1"
}
 if [ $USERID -ne 0 ]
 then 
    echo "please run this script with root priveleges"
    exit 1
 fi

dnf list installed git

VALIDATE $?

#if [ $? -ne 0 ]
#then
    #echo "Git is not installed, going to install it.."
    #dnf install git -y
 #if [ $? -ne 0 ] 
 #then
# echo "Git installation is not success...check it"
# exit 1
 # else
# echo "Git installation is success"
#fi   
 # else
# echo "Git is already installed, nothing to do it.."

 #fi  

# dnf list installed mysql
 #if [ $? -ne 0 ] 
 #then
      echo "MYSQL is not installed...going to install"
      dnf  install mysql -y
#if [ $? -ne 0 ] 
#then 
    #echo "MYSQL installation is failure..please check"
     #  exit 1
     # else
      #  echo "MYSQL insallation is success"
 # fi  
  #  else
      # echo "MYSQL is already installed..nothing to do"
  # fi          

