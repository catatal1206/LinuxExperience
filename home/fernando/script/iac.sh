#1/bin/bash

echo "criando diretórios..."

mkdir /lucas
mkdir /André
mkdir /Anderson

echo "Criando grupos de  usuários..."

groupadd  GRP_VEN
groupadd  GRP_ADM
groupadd  GRP_SEC

echo "Criando usuários..."

useradd  Santos -m -s  /bin/bash  -p $(openssl passwd  -crypt  senha123) -G  GRP_VEN
useradd  Santa -m -s  /bin/bash  -p $(openssl passwd  -crypt  senha123) -G  GRP_VEN
useradd  Santos12 -m -s  /bin/bash  -p $(openssl passwd  -crypt  senha123) -G  GRP_VEN

useradd  Carla -m -s  /bin/bash  -p $(openssl passwd  -crypt  senha123) -G  GRP_ADM
useradd  Carlão -m -s  /bin/bash  -p $(openssl passwd  -crypt  senha123) -G  GRP_ADM
useradd  Claudio -m -s  /bin/bash  -p $(openssl passwd  -crypt  senha123) -G  GRP_ADM

useradd  Fabio -m -s  /bin/bash  -p $(openssl passwd  -crypt  senha123) -G  GRP_SEC
useradd  Fabiana -m -s  /bin/bash  -p $(openssl passwd  -crypt  senha123) -G  GRP_SEC
useradd  Fabiano -m -s  /bin/bash  -p $(openssl passwd  -crypt  senha123) -G  GRP_SEC

echo "Especificando permissões  diretorios..."

chown root: GRP_VEN /Anderson
chown root: GRP_SEC /André
chown root: GRP_ADM /lucas

chmod 770 /André
chmod 770 /Anderson
chmod 770 /lucas

echo "Fim...."
