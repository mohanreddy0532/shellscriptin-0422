#!/bin/bash

USER_UID=$(id -u)
if [ ${USER_UID} -ne 0 ]; then
  echo -e "\e[1;31You should be a root user\e[0m"
  exit
fi


COMPONENT=$1
if [ -z "$COMPONENT" ]; then
  echo -e "\e[1;31mComponent Input Missing\e[0m"
  exit
fi

if [ ! -e components/${COMPONENT}.sh ]; then
  echo -e "\e[1;31mGiven component doesnont exist\e[0m"
  exit
fi

bash components/${COMPONENT}.sh

if [ $? -ne 0 ]; then
  echo "Download frontend Failed"
  exit 1
fi


