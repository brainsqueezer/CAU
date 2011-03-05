#!/bin/bash

exit=0
nombre="SinNombre"
nivel=0
experiencia=0
personaje=0

#Hoja Personaje
#Niveles <- modos de subir: subes de modo general, eliges usando tu experiencia, lo que mas hayas usado es lo que sube
#Caracteristicas <- prreguntar datos
#Habilidades <- innataas a la raza. tb hay habilidades generales




function procesar_cmd {
   cmd=$1
   if [ "$cmd" = y ]
   then
   exit=1
   echo "Exiting..."
   exit 0
   fi
}

function valor_habilidad {
RANGE=18
number=$RANDOM
let "number %= $RANGE"
return $number
}

echo
echo
echo "................................................................................"
echo ".......77+OO...................................................................."
echo ".....,I77I?OO+.................................................................."
echo "..:I777I77+OZZ:................................................................."
echo ".:7I7I7III?ZZOO.................................................$=.............."
echo "..:777777=ZOOOO:...:+.D:7.$=8,O=8.~8:?.+,7.,?~,,+?,?,.7.7.O=8,~8$=8,7.Z=8,7.$=.."
echo "...=7777I.OOOOO:...:=.8~?.7+,O7.8,:8:+.:.7..I=,.II.+,.I.I.Z+8,:8$=8,I.=:8,7.7+.."
echo "...,7777+~OOOOZ.......:.,=,..:...~:..,:...:,.,.:..,.::..:~Z+.~:.,.~.,~,.~.,~,..."
echo "...,I7I7.ZOZOO:.........................................~I~....................."
echo "...~?,..7OOOZ+.................................................................."
echo "................................................................................"
echo
echo
echo "Como te llamas?"
read nombre
echo
echo
echo
echo "Hola $nombre. Bienvenido/a al CAU"
echo "Centro de Asesoramiento a Usuarios de NovaCaixaGalicia"
echo "Tienes 8 horas de tiempo y 100 euros para resolver las misiones de hoy."
echo "Aunque puedes ganar 1 hora si evitas ir a comer y otra hora si te vas con la señora de la limpieza."
echo
echo "Elije tu personaje:"
echo "1. Tecnico hardware"
echo "2. Programador de aplicaciones"
echo ""
read personaje

echo "Eres informatico nivel 1"
echo "Generando tus habilidades..."
valor_habilidad
h_cables=$?
valor_habilidad
h_scripts=$?
valor_habilidad
h_usar=$?
valor_habilidad
h_soportar=$?
valor_habilidad
h_mentiras=$?
valor_habilidad
h_sueno=$?
valor_habilidad
h_hardware=$?
echo "Enchufar cables -> $h_cables/18"
echo "Crear Scripts -> $h_scripts/18"
echo "Usar cualquier programa aleatorio -> $h_usar/18"
echo "Soportar usuarios -> $h_soportar/18"
echo "Detectar mentiras del usuario -> $h_mentiras/18"
echo "Soportar la falta de sueño -> $h_sueno/18"
echo "Encontrar errores hardware -> $h_hardware/18"
echo
echo "Estás preparado?"
read
echo
echo
echo
echo "Hay cinco telefonos sonando. ¿Cual deseas responder? [1-5]"
read telefono

while [ $exit -eq 0 ]; do
   echo     "Operador> CAU Buenos dias. En que puedo ayudarle?"
   echo -ne "cmd>      "
   read answer
   procesar_cmd $cmd
done
