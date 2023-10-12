#!/bin/bash

# -=-=-=-=-	CLRS -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- #

DEF_COLOR='\033[0;39m'
BLACK='\033[0;30m'
RED='\033[1;91m'
GREEN='\033[1;92m'
YELLOW='\033[0;93m'
BLUE='\033[0;94m'
MAGENTA='\033[0;95m'
CYAN='\033[0;96m'
GRAY='\033[0;90m'
WHITE='\033[0;97m'

printf ${BLUE}"\n-------------------------------------------------------------\n"${DEF_COLOR};
printf ${YELLOW}"\n\t\tTEST CREATED BY: "${DEF_COLOR};
printf ${CYAN}"YY\t\n"${DEF_COLOR};
printf ${BLUE}"\n-------------------------------------------------------------\n"${DEF_COLOR};

rm -rf traces.txt
rm -rf 0

# -=-=-=-=-	Control errors -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- #

FILE=$PWD/push_swap
FICHERO=test_check.txt

ARG="a"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}1.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}1.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}1.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="111a11"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}2.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}2.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}2.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="hello world"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}3.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}3.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}3.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

./push_swap "" > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}4.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}4.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}4.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="0 0"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}5.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}5.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}5.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="-01 -001"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
    printf "${GREEN}6.[OK] ${DEF_COLOR}\n";
  else
    printf "${RED}6.[KO] ${DEF_COLOR}\n";
    break
  fi
done < test_check.txt
else
  printf "${RED}6.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="111-1 2 -3"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}7.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}7.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}7.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="-3 -2 -2"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}8.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}8.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}8.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="\n"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}9.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}9.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}9.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="-2147483649"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}10.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}10.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}10.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="-2147483650"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}11.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}11.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}11.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="2147483648"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}12.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}12.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}12.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="8 008 12"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}13.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}13.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}13.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="10 -1 -2 -3 -4 -5 -6 90 99 10"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}14.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}14.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}14.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="1 +1 -1"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}15.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}15.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}15.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="3333-3333 1 4"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}16.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}16.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}16.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="111a111 -4 3"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}17.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}17.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}17.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="111111 -4 3 03"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}18.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}18.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}18.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="2147483649"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}19.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}19.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}19.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="2147483647+1"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}20.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}20.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}20.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="0 1 2 3 4 5 0"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}21.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}21.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}21.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="3 +3"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}22.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}22.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}22.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="3+3"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}23.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}23.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}23.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="42 42"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}24.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}24.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}24.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="42 -42 -42 "
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}25.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}25.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}25.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="4222-4222"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}26.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}26.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}26.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="99999999999999999999999999"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}27.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}27.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}27.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="-99999999999999999999999999"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}28.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}28.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}28.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="0 -0 1 -1"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}29.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}29.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}29.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="0 +0 1 -1"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}30.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}30.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}30.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="111+111 -4 3"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}31.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}31.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}31.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="-"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}32.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}32.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}32.[KO] ${DEF_COLOR}\n";
fi

ARG="+"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}33.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}33.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}33.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="--123 1 321"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}34.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}34.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}34.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="++123 1 321"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
  	printf "${GREEN}35.[OK] ${DEF_COLOR}\n";
  else
  	printf "${RED}35.[KO] ${DEF_COLOR}\n";
  	break
  fi
done < test_check.txt
else
	printf "${RED}35.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="0000000000000000000000009 000000000000000000000009"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
    printf "${GREEN}36.[OK] ${DEF_COLOR}\n";
  else
    printf "${RED}36.[KO] ${DEF_COLOR}\n";
    break
  fi
done < test_check.txt
else
  printf "${RED}36.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="00000001 1 9 3"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
    printf "${GREEN}37.[OK] ${DEF_COLOR}\n";
  else
    printf "${RED}37.[KO] ${DEF_COLOR}\n";
    break
  fi
done < test_check.txt
else
  printf "${RED}37.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="00000003 003 9 1"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
    printf "${GREEN}38.[OK] ${DEF_COLOR}\n";
  else
    printf "${RED}38.[KO] ${DEF_COLOR}\n";
    break
  fi
done < test_check.txt
else
  printf "${RED}38.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="--21345"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
    printf "${GREEN}39.[OK] ${DEF_COLOR}\n";
  else
    printf "${RED}39.[KO] ${DEF_COLOR}\n";
    break
  fi
done < test_check.txt
else
  printf "${RED}39.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt


ARG="1 01"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
    printf "${GREEN}40.[OK] ${DEF_COLOR}\n";
  else
    printf "${RED}40.[KO] ${DEF_COLOR}\n";
    break
  fi
done < test_check.txt
else
  printf "${RED}40.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="-000 -0000"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
    printf "${GREEN}41.[OK] ${DEF_COLOR}\n";
  else
    printf "${RED}41.[KO] ${DEF_COLOR}\n";
    break
  fi
done < test_check.txt
else
  printf "${RED}41.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt

ARG="-00042 -000042"
./push_swap $ARG > /dev/null 2> test_check.txt
if [ -s "$FICHERO" ];then
while IFS= read -r line
do
  if [[ $line == "Error" ]]; then
    printf "${GREEN}42.[OK] ${DEF_COLOR}\n";
  else
    printf "${RED}42.[KO] ${DEF_COLOR}\n";
    break
  fi
done < test_check.txt
else
  printf "${RED}42.[KO] ${DEF_COLOR}\n";
fi

rm -rf test_check.txt
rm -rf 0

# -=-=-=-=-	Basic -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- #

printf ${BLUE}"\n-------------------------------------------------------------\n"${DEF_COLOR};
printf ${BLUE}"\n\t\t\tBasic input\t\t\n"${DEF_COLOR};
printf ${BLUE}"\n-------------------------------------------------------------\n\n"${DEF_COLOR};

ARG="2 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 4 ]; then
	printf "${GREEN}1.[OK] ${DEF_COLOR}";
else
	printf "${RED}1.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}2.[OK] ${DEF_COLOR}";
else
	printf "${RED}2.[KO]${DEF_COLOR}";
fi

ARG="1 3 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}3.[OK] ${DEF_COLOR}";
else
	printf "${RED}3.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}4.[OK] ${DEF_COLOR}";
else
	printf "${RED}4.[KO]${DEF_COLOR}";
fi

ARG="2 3 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 4 ]; then
	printf "${GREEN}5.[OK] ${DEF_COLOR}";
else
	printf "${RED}5.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}6.[OK] ${DEF_COLOR}";
else
	printf "${RED}6.[KO]${DEF_COLOR}";
fi

ARG="2 1 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 4 ]; then
	printf "${GREEN}7.[OK] ${DEF_COLOR}";
else
	printf "${RED}7.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}8.[OK] ${DEF_COLOR}";
else
	printf "${RED}8.[KO]${DEF_COLOR}";
fi

ARG="3 1 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 4 ]; then
	printf "${GREEN}9.[OK] ${DEF_COLOR}";
else
	printf "${RED}9.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}10.[OK] ${DEF_COLOR}";
else
	printf "${RED}10.[KO]${DEF_COLOR}";
fi

ARG="1 2 4 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}13.[OK] ${DEF_COLOR}";
else
	printf "${RED}13.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi

S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}14.[OK] ${DEF_COLOR}";
else
	printf "${RED}14.[KO]${DEF_COLOR}";
fi

ARG="1 3 2 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}15.[OK] ${DEF_COLOR}";
else
	printf "${RED}15.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}16.[OK] ${DEF_COLOR}";
else
	printf "${RED}16.[KO]${DEF_COLOR}";
fi

ARG="1 3 4 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}17.[OK] ${DEF_COLOR}";
else
	printf "${RED}17.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}18.[OK] ${DEF_COLOR}";
else
	printf "${RED}18.[KO]${DEF_COLOR}";
fi

ARG="1 4 3 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}19.[OK] ${DEF_COLOR}";
else
	printf "${RED}19.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}20.[OK] ${DEF_COLOR}";
else
	printf "${RED}20.[KO]${DEF_COLOR}";
fi

ARG="1 4 2 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}21.[OK] ${DEF_COLOR}";
else
	printf "${RED}21.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}22.[OK] ${DEF_COLOR}";
else
	printf "${RED}22.[KO]${DEF_COLOR}";
fi

ARG="2 3 4 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}23.[OK] ${DEF_COLOR}";
else
	printf "${RED}23.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}24.[OK] ${DEF_COLOR}";
else
	printf "${RED}24.[KO]${DEF_COLOR}";
fi

ARG="2 4 3 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}25.[OK] ${DEF_COLOR}";
else
	printf "${RED}25.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}26.[OK] ${DEF_COLOR}";
else
	printf "${RED}26.[KO]${DEF_COLOR}";
fi

ARG="2 1 4 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}27.[OK] ${DEF_COLOR}";
else
	printf "${RED}27.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}28.[OK] ${DEF_COLOR}";
else
	printf "${RED}28.[KO]${DEF_COLOR}";
fi

ARG="2 1 3 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}29.[OK] ${DEF_COLOR}";
else
	printf "${RED}29.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}30.[OK] ${DEF_COLOR}";
else
	printf "${RED}30.[KO]${DEF_COLOR}";
fi

ARG="2 3 1 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}31.[OK] ${DEF_COLOR}";
else
	printf "${RED}31.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}32.[OK] ${DEF_COLOR}";
else
	printf "${RED}32.[KO]${DEF_COLOR}";
fi

ARG="2 4 1 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}33.[OK] ${DEF_COLOR}";
else
	printf "${RED}33.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}34.[OK] ${DEF_COLOR}";
else
	printf "${RED}34.[KO]${DEF_COLOR}";
fi

ARG="3 4 1 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}35.[OK] ${DEF_COLOR}";
else
	printf "${RED}35.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}36.[OK] ${DEF_COLOR}";
else
	printf "${RED}36.[KO]${DEF_COLOR}";
fi

ARG="3 4 2 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}37.[OK] ${DEF_COLOR}";
else
	printf "${RED}37.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}38.[OK] ${DEF_COLOR}";
else
	printf "${RED}38.[KO]${DEF_COLOR}";
fi

ARG="3 2 1 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}39.[OK] ${DEF_COLOR}";
else
	printf "${RED}39.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}40.[OK] ${DEF_COLOR}";
else
	printf "${RED}40.[KO]${DEF_COLOR}";
fi

ARG="3 1 2 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}41.[OK] ${DEF_COLOR}";
else
	printf "${RED}41.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}42.[OK] ${DEF_COLOR}";
else
	printf "${RED}42.[KO]${DEF_COLOR}";
fi

ARG="3 1 2 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}43.[OK] ${DEF_COLOR}";
else
	printf "${RED}43.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}44.[OK] ${DEF_COLOR}";
else
	printf "${RED}44.[KO]${DEF_COLOR}";
fi

ARG="3 2 4 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}45.[OK] ${DEF_COLOR}";
else
	printf "${RED}45.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}46.[OK] ${DEF_COLOR}";
else
	printf "${RED}46.[KO]${DEF_COLOR}";
fi

ARG="3 1 4 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}47.[OK] ${DEF_COLOR}";
else
	printf "${RED}47.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}48.[OK] ${DEF_COLOR}";
else
	printf "${RED}48.[KO]${DEF_COLOR}";
fi

ARG="4 1 2 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}49.[OK] ${DEF_COLOR}";
else
	printf "${RED}49.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}50.[OK] ${DEF_COLOR}";
else
	printf "${RED}50.[KO]${DEF_COLOR}";
fi

ARG="4 1 3 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}51.[OK] ${DEF_COLOR}";
else
	printf "${RED}51.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}52.[OK] ${DEF_COLOR}";
else
	printf "${RED}52.[KO]${DEF_COLOR}";
fi

ARG="4 2 1 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}53.[OK] ${DEF_COLOR}";
else
	printf "${RED}53.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}54.[OK] ${DEF_COLOR}";
else
	printf "${RED}54.[KO]${DEF_COLOR}";
fi

ARG="4 2 3 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}55.[OK] ${DEF_COLOR}";
else
	printf "${RED}55.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}56.[OK] ${DEF_COLOR}";
else
	printf "${RED}56.[KO]${DEF_COLOR}";
fi

ARG="4 3 1 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}57.[OK] ${DEF_COLOR}";
else
	printf "${RED}57.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}58.[OK] ${DEF_COLOR}";
else
	printf "${RED}58.[KO]${DEF_COLOR}";
fi

ARG="4 3 2 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}59.[OK] ${DEF_COLOR}";
else
	printf "${RED}59.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}60.[OK] ${DEF_COLOR}";
else
	printf "${RED}60.[KO]${DEF_COLOR}";
fi

rm -rf 0

printf ${BLUE}"\n\n-------------------------------------------------------------\n\n"${DEF_COLOR};
printf ${BLUE}"\n\t\t\tSize 5\t\t\n"${DEF_COLOR};
printf ${BLUE}"\n-------------------------------------------------------------\n\n"${DEF_COLOR};


ARG="1 2 3 5 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}1.[OK] ${DEF_COLOR}";
else
	printf "${RED}1.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}2.[OK] ${DEF_COLOR}";
else
	printf "${RED}2.[KO]${DEF_COLOR}";
fi

ARG="1 2 4 3 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}3.[OK] ${DEF_COLOR}";
else
	printf "${RED}3.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}4.[OK] ${DEF_COLOR}";
else
	printf "${RED}4.[KO]${DEF_COLOR}";
fi

ARG="1 2 4 5 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}5.[OK] ${DEF_COLOR}";
else
	printf "${RED}5.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}6.[OK] ${DEF_COLOR}";
else
	printf "${RED}6.[KO]${DEF_COLOR}";
fi

ARG="1 2 5 3 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}7.[OK] ${DEF_COLOR}";
else
	printf "${RED}7.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}8.[OK] ${DEF_COLOR}";
else
	printf "${RED}8.[KO]${DEF_COLOR}";
fi

ARG="1 2 5 4 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}9.[OK] ${DEF_COLOR}";
else
	printf "${RED}9.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}10.[OK] ${DEF_COLOR}";
else
	printf "${RED}10.[KO]${DEF_COLOR}";
fi

ARG="1 3 2 4 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}11.[OK] ${DEF_COLOR}";
else
	printf "${RED}11.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}12.[OK] ${DEF_COLOR}";
else
	printf "${RED}12.[KO]${DEF_COLOR}";
fi

ARG="1 3 2 5 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}13.[OK] ${DEF_COLOR}";
else
	printf "${RED}13.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi

S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}14.[OK] ${DEF_COLOR}";
else
	printf "${RED}14.[KO]${DEF_COLOR}";
fi

ARG="1 3 4 2 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}15.[OK] ${DEF_COLOR}";
else
	printf "${RED}15.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}16.[OK] ${DEF_COLOR}";
else
	printf "${RED}16.[KO]${DEF_COLOR}";
fi

ARG="1 3 4 5 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}17.[OK] ${DEF_COLOR}";
else
	printf "${RED}17.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}18.[OK] ${DEF_COLOR}";
else
	printf "${RED}18.[KO]${DEF_COLOR}";
fi

ARG="1 3 5 2 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}19.[OK] ${DEF_COLOR}";
else
	printf "${RED}19.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}20.[OK] ${DEF_COLOR}";
else
	printf "${RED}20.[KO]${DEF_COLOR}";
fi

ARG="1 3 5 4 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}21.[OK] ${DEF_COLOR}";
else
	printf "${RED}21.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}22.[OK] ${DEF_COLOR}";
else
	printf "${RED}22.[KO]${DEF_COLOR}";
fi

ARG="1 4 2 3 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}23.[OK] ${DEF_COLOR}";
else
	printf "${RED}23.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}24.[OK] ${DEF_COLOR}";
else
	printf "${RED}24.[KO]${DEF_COLOR}";
fi

ARG="1 4 2 5 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}25.[OK] ${DEF_COLOR}";
else
	printf "${RED}25.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}26.[OK] ${DEF_COLOR}";
else
	printf "${RED}26.[KO]${DEF_COLOR}";
fi

ARG="1 4 3 2 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}27.[OK] ${DEF_COLOR}";
else
	printf "${RED}27.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}28.[OK] ${DEF_COLOR}";
else
	printf "${RED}28.[KO]${DEF_COLOR}";
fi

ARG="1 4 3 5 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}29.[OK] ${DEF_COLOR}";
else
	printf "${RED}29.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}30.[OK] ${DEF_COLOR}";
else
	printf "${RED}30.[KO]${DEF_COLOR}";
fi

ARG="1 4 5 2 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}31.[OK] ${DEF_COLOR}";
else
	printf "${RED}31.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}32.[OK] ${DEF_COLOR}";
else
	printf "${RED}32.[KO]${DEF_COLOR}";
fi

ARG="1 4 5 3 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}33.[OK] ${DEF_COLOR}";
else
	printf "${RED}33.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}34.[OK] ${DEF_COLOR}";
else
	printf "${RED}34.[KO]${DEF_COLOR}";
fi

ARG="1 5 2 3 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}35.[OK] ${DEF_COLOR}";
else
	printf "${RED}35.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}36.[OK] ${DEF_COLOR}";
else
	printf "${RED}36.[KO]${DEF_COLOR}";
fi

ARG="1 5 2 4 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}37.[OK] ${DEF_COLOR}";
else
	printf "${RED}37.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}38.[OK] ${DEF_COLOR}";
else
	printf "${RED}38.[KO]${DEF_COLOR}";
fi

ARG="1 5 3 2 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}39.[OK] ${DEF_COLOR}";
else
	printf "${RED}39.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}40.[OK] ${DEF_COLOR}";
else
	printf "${RED}40.[KO]${DEF_COLOR}";
fi

ARG="1 5 3 4 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}41.[OK] ${DEF_COLOR}";
else
	printf "${RED}41.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}42.[OK] ${DEF_COLOR}";
else
	printf "${RED}42.[KO]${DEF_COLOR}";
fi

ARG="1 5 3 4 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}43.[OK] ${DEF_COLOR}";
else
	printf "${RED}43.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}44.[OK] ${DEF_COLOR}";
else
	printf "${RED}44.[KO]${DEF_COLOR}";
fi

ARG="1 5 4 2 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}45.[OK] ${DEF_COLOR}";
else
	printf "${RED}45.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}46.[OK] ${DEF_COLOR}";
else
	printf "${RED}46.[KO]${DEF_COLOR}";
fi

ARG="1 5 4 3 2";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}47.[OK] ${DEF_COLOR}";
else
	printf "${RED}47.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}48.[OK] ${DEF_COLOR}";
else
	printf "${RED}48.[KO]${DEF_COLOR}";
fi

ARG="2 1 3 4 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}49.[OK] ${DEF_COLOR}";
else
	printf "${RED}49.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}50.[OK] ${DEF_COLOR}";
else
	printf "${RED}50.[KO]${DEF_COLOR}";
fi

ARG="2 1 3 5 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}51.[OK] ${DEF_COLOR}";
else
	printf "${RED}51.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}52.[OK] ${DEF_COLOR}";
else
	printf "${RED}52.[KO]${DEF_COLOR}";
fi

ARG="2 1 4 3 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}53.[OK] ${DEF_COLOR}";
else
	printf "${RED}53.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}54.[OK] ${DEF_COLOR}";
else
	printf "${RED}54.[KO]${DEF_COLOR}";
fi

ARG="2 1 4 5 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}55.[OK] ${DEF_COLOR}";
else
	printf "${RED}55.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}56.[OK] ${DEF_COLOR}";
else
	printf "${RED}56.[KO]${DEF_COLOR}";
fi

ARG="2 1 5 3 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}57.[OK] ${DEF_COLOR}";
else
	printf "${RED}57.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}58.[OK] ${DEF_COLOR}";
else
	printf "${RED}58.[KO]${DEF_COLOR}";
fi

ARG="2 1 5 4 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}59.[OK] ${DEF_COLOR}";
else
	printf "${RED}59.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}60.[OK] ${DEF_COLOR}";
else
	printf "${RED}60.[KO]${DEF_COLOR}";
fi

ARG="2 3 1 4 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}61.[OK] ${DEF_COLOR}";
else
	printf "${RED}61.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}62.[OK] ${DEF_COLOR}";
else
	printf "${RED}62.[KO]${DEF_COLOR}";
fi

ARG="2 3 1 5 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}63.[OK] ${DEF_COLOR}";
else
	printf "${RED}63.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}64.[OK] ${DEF_COLOR}";
else
	printf "${RED}64.[KO]${DEF_COLOR}";
fi

ARG="2 3 4 1 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}65.[OK] ${DEF_COLOR}";
else
	printf "${RED}65.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}66.[OK] ${DEF_COLOR}";
else
	printf "${RED}66.[KO]${DEF_COLOR}";
fi

ARG="2 3 4 5 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}67.[OK] ${DEF_COLOR}";
else
	printf "${RED}67.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}68.[OK] ${DEF_COLOR}";
else
	printf "${RED}68.[KO]${DEF_COLOR}";
fi

ARG="2 3 5 1 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}69.[OK] ${DEF_COLOR}";
else
	printf "${RED}69.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}70.[OK] ${DEF_COLOR}";
else
	printf "${RED}70.[KO]${DEF_COLOR}";
fi

ARG="2 3 5 4 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}71.[OK] ${DEF_COLOR}";
else
	printf "${RED}71.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}72.[OK] ${DEF_COLOR}";
else
	printf "${RED}72.[KO]${DEF_COLOR}";
fi

ARG="2 4 1 3 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}73.[OK] ${DEF_COLOR}";
else
	printf "${RED}73.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}74.[OK] ${DEF_COLOR}";
else
	printf "${RED}74.[KO]${DEF_COLOR}";
fi

ARG="2 4 1 5 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}75.[OK] ${DEF_COLOR}";
else
	printf "${RED}75.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}76.[OK] ${DEF_COLOR}";
else
	printf "${RED}76.[KO]${DEF_COLOR}";
fi

ARG="2 4 3 1 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}77.[OK] ${DEF_COLOR}";
else
	printf "${RED}77.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}78.[OK] ${DEF_COLOR}";
else
	printf "${RED}78.[KO]${DEF_COLOR}";
fi

ARG="2 4 3 5 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}79.[OK] ${DEF_COLOR}";
else
	printf "${RED}79.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}80.[OK] ${DEF_COLOR}";
else
	printf "${RED}80.[KO]${DEF_COLOR}";
fi

ARG="2 4 5 1 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}81.[OK] ${DEF_COLOR}";
else
	printf "${RED}81.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}82.[OK] ${DEF_COLOR}";
else
	printf "${RED}82.[KO]${DEF_COLOR}";
fi

ARG="2 4 5 3 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}83.[OK] ${DEF_COLOR}";
else
	printf "${RED}83.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}84.[OK] ${DEF_COLOR}";
else
	printf "${RED}84.[KO]${DEF_COLOR}";
fi

ARG="2 5 1 3 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}85.[OK] ${DEF_COLOR}";
else
	printf "${RED}85.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}86.[OK] ${DEF_COLOR}";
else
	printf "${RED}86.[KO]${DEF_COLOR}";
fi

ARG="2 5 1 4 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}87.[OK] ${DEF_COLOR}";
else
	printf "${RED}87.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}88.[OK] ${DEF_COLOR}";
else
	printf "${RED}88.[KO]${DEF_COLOR}";
fi

ARG="2 5 3 1 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}89.[OK] ${DEF_COLOR}";
else
	printf "${RED}89.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}90.[OK] ${DEF_COLOR}";
else
	printf "${RED}90.[KO]${DEF_COLOR}";
fi

ARG="2 5 3 4 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}91.[OK] ${DEF_COLOR}";
else
	printf "${RED}91.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}92.[OK] ${DEF_COLOR}";
else
	printf "${RED}92.[KO]${DEF_COLOR}";
fi

ARG="2 5 4 1 3";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}93.[OK] ${DEF_COLOR}";
else
	printf "${RED}93.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}94.[OK] ${DEF_COLOR}";
else
	printf "${RED}94.[KO]${DEF_COLOR}";
fi

ARG="2 5 4 3 1";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}95.[OK] ${DEF_COLOR}";
else
	printf "${RED}95.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}96.[OK] ${DEF_COLOR}";
else
	printf "${RED}96.[KO]${DEF_COLOR}";
fi

ARG="3 1 2 4 5";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}97.[OK] ${DEF_COLOR}";
else
	printf "${RED}97.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}98.[OK] ${DEF_COLOR}";
else
	printf "${RED}98.[KO]${DEF_COLOR}";
fi

ARG="3 1 2 5 4";
N=$(./push_swap $ARG | wc -l)
if [ $N -lt 13 ]; then
	printf "${GREEN}99.[OK] ${DEF_COLOR}";
else
	printf "${RED}99.[KO]${DEF_COLOR}";
	printf "${WHITE} TEST: ";
	echo -n "$ARG "
fi
S=$(./push_swap $ARG | ./checker_linux $ARG)
if [ $S == "OK" ]; then
	printf "${GREEN}100.[OK] ${DEF_COLOR}";
else
	printf "${RED}100.[KO]${DEF_COLOR}";
fi
