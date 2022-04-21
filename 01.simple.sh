#!/bin/bash

uname -a;
ls;

USER_UID=$(id -u)
if [ ${USER_UID} -ne 0 ]; then
  echo -e "\e[1;31You should be a root user\e[0m"
  exit
fi