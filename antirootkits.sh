#!/bin/bash
sudo echo "";
sudo echo "Scanning COMBO RKhunter + Chkrootkit";
sudo echo "Para gerar relatórios use sudo antirootkits >> /home/antirootkits.txt;";
sudo echo "ATENÇÃO: sudo cat /var/log/rkhunter.log >> /home/antirootkits.txt; no fim do script gravará o arquivo na pasta home chamda antirootkits.txt"
sudo echo "";
sudo echo "ATUALIZANDO RKHUNTER COM sudo rkhunter --propupd;";
sudo rkhunter --propupd;
sudo echo "";

sudo echo "";
sudo echo "RKhunter ACIONANDO - CHECANDO ROOTKITS NO SISTEMA - sudo rkhunter --checkall";
sudo rkhunter --checkall --sk;
sudo echo "";
echo;
sudo echo "APENAS OS WARNINGS DO RKHUNTER - sudo rkhunter -c --enable all --disable none --rwo";
sudo rkhunter -c --enable all --disable none --rwo;
sudo echo;
echo;
echo "CHKROOTKIT comando padrão ---> sudo chkrootkit";
sudo chkrootkit;
sudo echo "";
echo;
sudo echo "CHKROOTKIT no diretório root / ---> sudo chkrootkit -r /";
sudo chkrootkit -r /;
sudo echo;
sudo echo;
sudo echo "CHKROOTKIT - Esconde os positivos e mostra só os negativos se houver ---> sudo chkrootkit -e";
sudo chkrootkit -e;
sudo echo;
sudo echo;
sudo echo "CHKROOTKIT - Quiet Mode, mostra só os ALERTAS E SUSPEITAS ---> sudo chkrootkit -q";
sudo chkrootkit -q;
sudo echo;
sudo echo;
sudo echo "Abrindo relatórios";
#Para o cron somente que gravará na pasta /home/antirootkits.txt
sudo cat /var/log/rkhunter.log >> /home/antirootkits.txt;
#Para uso normal do usuário quando executar o script
sudo gedit /var/log/rkhunter.log;
sudo gedit /home/antirootkits.txt;
echo;
echo;
