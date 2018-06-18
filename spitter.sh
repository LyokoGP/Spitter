#!/bin/bash

clear

Banner(){
echo -e '\e[33m'
echo "  _____       _ _   _            "
echo " / ____|     (_) | | |           "
echo "| (___  _ __  _| |_| |_ ___ _ __ "
echo " \___ \| '_ \| | __| __/ _ \ '__|"
echo " ____) | |_) | | |_| ||  __/ |   "
echo "|_____/| .__/|_|\__|\__\___|_|   "
echo "       | |                       "
echo "       |_|                       "
echo -e '\e[0m'
}

Banner

ASSUMPTE="[CAIXABANK] Accés no autoritzat"
REMITENT=CaixaBank\<soporte@caixabank.com\>
CONTENT_TYPE=text/html
DESTINATARI=antiphishingempresa@gmail.com
COS=/path_absolut/exemple_mail.html

mail -s "$ASSUMPTE" --append=FROM:$REMITENT --append=Content-Type:$CONTENT_TYPE $DESTINATARI < $COS

CUA=$(mailq)
STRING="La cua de correus esta buida"
echo $CUA

while [[ $CUA != $STRING ]]
	do
	mailq
	sleep 2s
	CUA=$(mailq)
done

echo -e "\e[32mMissatge enviat correctament\e[0m"
echo ""
