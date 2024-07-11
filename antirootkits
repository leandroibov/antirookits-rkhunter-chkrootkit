#!/bin/bash
sudo echo "";
sudo echo "ATUALIZANDO RKHUNTER COM sudo rkhunter --propupd;";
sudo rkhunter --propupd;
sudo echo "";

sudo echo "";
sudo echo "RKhunter ACIONANDO - CHECANDO ROOTKITS NO SISTEM - sudo rkhunter --checkall";
sudo rkhunter --checkall --sk;
sudo echo "";
echo;
sudo echo "APENAS OS WARNINGS DO RKHUNTER";
sudo rkhunter -c --enable all --disable none --rwo;
sudo echo;
echo;
echo "CHKROOTKIT";
sudo chkrootkit;
sudo echo "";
echo;
sudo echo "CHKROOTKIT no diretório root /";
sudo chkrootkit -r /;
sudo echo;
sudo echo;
sudo echo "CHKROOTKIT - Esconde os positivos e mostra só os negativos se houver";
sudo chkrootkit -e;
