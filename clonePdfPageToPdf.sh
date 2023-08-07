#!/bin/bash

echo -e "\e[1;32mCloning single page ($2) $3 times into same PDF file ($1)...\e[0m"

i=1
while [[ $i -le $3 ]] ; do
	qpdf $1 --replace-input --pages . $2-$i ./$1 $i --
	(( i += 1 ))
	echo -e "\e[33m...Page $1 cloned $i times! \e[0m"
done

echo -e "\e[1;32mCloning done!\e[0m"
