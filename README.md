sha256 hashs:

b7962affc36564ba4a20566ad1877c8ae5cbf332cd67b8f51add5a631467ac7e  antirootkits

  

b7962affc36564ba4a20566ad1877c8ae5cbf332cd67b8f51add5a631467ac7e  antirootkits.sh


##################################################################################

##################################################################################

##################################################################################




#Precisa instalar primeiro o rkhunter e o chkrootkit;



#Para Debian ou Ubuntu

sudo apt clean;

sudo apt autoremove;

sudo apt update;

sudo apt upgrade;

sudo apt install rkhunter -y;

sudo apt install chkrootkit -y;

##################################################################################

##################################################################################

##################################################################################


#autorize execução

sudo chmod +x antirootkits.sh;

sudo chmod +x antirootkits;


##################################################################################

##################################################################################

##################################################################################


#Execute

sudo ./antirootkits.sh

#Execute de qualquer lugar como sudo ou admin com poder de sudo

cp -r antirootkits /bin;


##################################################################################

##################################################################################

##################################################################################


#execução

antirootkits

#ou

sudo antirootkits;


##################################################################################

##################################################################################

##################################################################################




***CONFIGURANDO SCAN AUTOMATIZADO CRON

***O script do githubt antirootkit.sh, remova a extensão .sh e ficará antirootkit

copie para /bin

sudo chmod +x antirootkit;

sudo cp -r antirootkit /bin;

#teste

sudo antirootkit;


##################################################################################

##################################################################################

##################################################################################



#CRIE, AUTORIZE E CONFIGURE O ARQUIVO DO CRON

nano /etc/cron.daily/chkrootkit-rkhunter-scan.sh;

chmod 700 /etc/cron.daily/chkrootkit-rkhunter-scan.sh;

sudo chmod +x /etc/cron.daily/chkrootkit-rkhunter-scan.sh;



##################################################################################

##################################################################################

##################################################################################


#SCAN uma vez ao dia

#Adicione no arquivo

#!/bin/sh

(

echo "##############################################" >> /home/antirootkits.txt;"

echo "#############################################" >> /home/antirootkits.txt;"

echo "" >> /home/antirootkits.txt;"

echo "" >> /home/antirootkits.txt;"

date >> /home/antirootkits.txt;"

sudo /bin/antirootkits >> /home/antirootkits.txt;"

echo "" >> /home/antirootkits.txt;"

echo "" >> /home/antirootkits.txt;"

date >> /home/antirootkits.txt;"

cat /var/log/rkhunter.log >> /home/antirootkits.txt;

echo "##############################################" >> /home/antirootkits.txt;"

echo "#############################################" >> /home/antirootkits.txt;"

) 


##################################################################################

##################################################################################

##################################################################################







#A cada hora

nano /etc/cron.hourly/chkrootkit-rkhunter-scan.sh;

chmod 700 /etc/cron.hourly/chkrootkit-rkhunter-scan.sh;

#adicione no arquivo:

#!/bin/sh

(

/bin/antirootkits;

gedit antirootkits.txt;

) 


#ou adicione para printar pelo gedit o terminal completo em relatório.
#!/bin/sh
(
/bin/antirootkits > antirootkits.txt;
gedit antirootkits.txt;
) 






***Restart o serviço do cron ou Reinicie o pc do linux

sudo service cron reload;

#ou

/etc/init.d/cron reload;


