#!/bin/zsh

useradd=mohaan

echo "User add - ${username}"
useradd ${username}
echo password  | passwd --stdin ${username}
echo "Successfully added User - ${username}"