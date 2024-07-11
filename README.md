sha256 hashs:

b7962affc36564ba4a20566ad1877c8ae5cbf332cd67b8f51add5a631467ac7e  antirootkits

b7962affc36564ba4a20566ad1877c8ae5cbf332cd67b8f51add5a631467ac7e  antirootkits.sh



#Precisa instalar primeiro o rkhunter e o chkrootkit;



#Para Debian ou Ubuntu

sudo apt clean;

sudo apt autoremove;

sudo apt update;

sudo apt upgrade;

sudo apt install rkhunter -y;

sudo apt install chkrootkit -y;



#autorize execução

sudo chmod +x antirootkits.sh;

sudo chmod +x antirootkits;



#Execute

sudo ./antirootkits.sh

#Execute de qualquer lugar como sudo ou admin com poder de sudo

cp -r antirootkits /bin;



#execução

antirootkits

#ou

sudo antirootkits;
