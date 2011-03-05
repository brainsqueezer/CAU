#!/bin/bash

exit=0
nombre="SinNombre"
nivel=0
experiencia=0

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

#CAU = Centro de Asesoramiento de Usuarios
while [ $exit -eq 0 ]; do
   echo     "Operador> CAU Buenos dias. En que puedo ayudarle?"
   echo -ne "cmd>      "
   read answer
   procesar_cmd $cmd
done
