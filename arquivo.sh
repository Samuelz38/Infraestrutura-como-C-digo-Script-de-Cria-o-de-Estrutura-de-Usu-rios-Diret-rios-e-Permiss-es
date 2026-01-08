#!/bin/bash

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "PARA O SCRIPT FUNCIONAR LOGUE COMO ROOT"
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

echo "começando a gerar infraestrutura IaC......."
echo "gerando diretórios : publico - adm - ven - sec"
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico
echo "diretórios gerados"

echo "=================================================================================================="
ls -l
echo "=================================================================================================="

echo "gerando grupos: GRP_ADM - GRP_VEN - GRP_SEC ........."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "=================================================================================================="
cat /etc/group
echo "=================================================================================================="

echo "gerando usuários: carlos,maria,joao,sebastiana,roberto,debora,josefina,amanda e rogerio"

useradd -s /bin/bash -G GRP_ADM joao -p $(openssl passwd -crypt joao123)
useradd -s /bin/bash -G GRP_ADM maria -p $(openssl passwd -crypt maria123)
useradd -s /bin/bash -G GRP_ADM carlos -p $(openssl passwd -crypt carlos123)
useradd -s /bin/bash -G GRP_VEN debora -p $(openssl passwd -crypt debora123)
useradd -s /bin/bash -G GRP_VEN roberto -p $(openssl passwd -crypt roberto123)
useradd -s /bin/bash -G GRP_VEN sebastiana -p $(openssl passwd -crypt sebastina123)
useradd -s /bin/bash -G GRP_SEC josefina -p $(openssl passwd -crypt josefina123)
useradd -s /bin/bash -G GRP_SEC amanda -p $(openssl passwd -crypt amanda123)
useradd -s /bin/bash -G GRP_SEC rogerio -p $(openssl passwd -crypt rogerio123)

echo "=================================================================================================="
cat  /etc/passwd
echo "=================================================================================================="

echo "fazendo ajustes finais...."

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec



echo "Processo Finalizado."
 
