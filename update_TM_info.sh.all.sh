#!/bin/zsh

echo "updating: " $(cat /etc/group | grep "^tm2020:" | cut -d":" -f4  |tr ',' ' ')
echo "Press <Enter> to proceed."; read ok
for u in $(cat /etc/group | grep "^tm2020:" | cut -d":" -f4  |tr ',' ' ') ; do sudo ./update_TM_info.sh $u; done
