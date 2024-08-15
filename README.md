sha256 hashs:

93baa32c9e5bbb25bfac9207e4a52df1e858cd31bd6851c6d830d45da3c937ef  antirootkits

93baa32c9e5bbb25bfac9207e4a52df1e858cd31bd6851c6d830d45da3c937ef  antirootkits.sh





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

#SCAN UMA VEZ AO DIA

sudo touch /etc/cron.daily/chkrootkit-rkhunter-scan.sh;

sudo chmod 700 /etc/cron.daily/chkrootkit-rkhunter-scan.sh;

sudo chmod +x /etc/cron.daily/chkrootkit-rkhunter-scan.sh;

sudo nano /etc/cron.daily/chkrootkit-rkhunter-scan.sh;



##################################################################################

##################################################################################

##################################################################################

#adicione no arquivo:

#!/bin/sh

(

sudo /bin/antirootkits >> /home/antirootkits.txt;"

) 






##################################################################################

##################################################################################

##################################################################################







#SCAN A CADA HORA


sudo touch /etc/cron.hourly/chkrootkit-rkhunter-scan.sh;

sudo chmod 700 /etc/cron.hourly/chkrootkit-rkhunter-scan.sh;

sudo chmod +x /etc/cron.hourly/chkrootkit-rkhunter-scan.sh;

sudo nano /etc/cron.hourly/chkrootkit-rkhunter-scan.sh;


#adicione no arquivo:

#!/bin/sh

(

sudo /bin/antirootkits >> /home/antirootkits.txt;"

) 


##################################################################################

##################################################################################

##################################################################################








***Restart o serviço do cron ou Reinicie o pc do linux

sudo service cron reload;

#ou

/etc/init.d/cron reload;


##################################################################################

##################################################################################

##################################################################################


####OUTRA OPÇÃO:

####Adicione no cron pelo cron tab scanning a cada hora:

sudo crontab -e;

#adicione a linha

0 * * * * /bin/antirootkits >> /home/antirootkits.txt 2>&1
0 * * * * echo "" >> /home/antirootkits.txt 2>&1
0 * * * * echo "" >> /home/antirootkits.txt 2>&1


#outro exemplo que pode ser adicionado com update

0 * * * * sudo apt update -y && sudo apt upgrade -y 2>&1



##################################################################################

##################################################################################

##################################################################################


OBS E ATENÇÃO:


#Para o cron somente gravará na pasta /home/antirootkits.txt

sudo cat /var/log/rkhunter.log >> /home/antirootkits.txt;

#Para uso normal do usuário quando executar o script

sudo gedit /var/log/rkhunter.log;

sudo gedit /home/antirootkits.txt;


####ERRATA

No vídeo tutorial, alertei que o cron daria um pop up com o gedit e mostraria cada hora o relatório para o usuário, mas o cron roda só em segundo plano e não interage com a sessão do usuário.

Modifiquei e consertei os scripts e comandos.

Por isso o usuário terá que verificar de hora em hora os relatórios gerados em:

/home/antirootkits.txt;

use

gedit /home/antirootkits.txt;

para checar os relatório a cada hora, e apague quando necessário...


##########
LINK DO VÍDEO TUTORIAL SOBRE CHKROOTKIT E RKHUNTER

https://www.youtube.com/watch?v=7l12iMVMK70


##################################################################################################

Doe monero para nos ajudar: 87JGuuwXzoMGwQAcSD7cvS7D7iacPpN2f5bVqETbUvCgdEmrPZa12gh5DSiKKRgdU7c5n5x1UvZLj8PQ7AAJSso5CQxgjak

Aprenda conosco pelos cursos gravados online e grupo de sinais:

https://traderprofissional.com.br/comprar_nossos_cursos.aspx 

Página oficial de segurança digital:

https://traderprofissional.com.br/seguranca-digital.aspx

Vídeo youtube:

https://www.youtube.com/watch?v=7l12iMVMK70&t=13s















