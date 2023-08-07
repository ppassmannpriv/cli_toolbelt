#/bin/bash

echo -e "\e[1;32mUpdating and/or installing software from apt\e[0m"
apt update
apt install qpdf -y


echo -e "\e[1;32mLinking scripts into /usr/local/bin for usage\e[0m"
ln -s "$(pwd)/clonePdfPageToPdf.sh" /usr/local/bin/clonePdfPageToPdf
