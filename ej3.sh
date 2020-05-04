read -p "Introuce un nombre de usuario: " u

ruta_ anterior= `pwd`
ruta_usuario=$ruta_anterior/$1
cd$1
ruta_actual=`pwd`

contador=0
contadorficheros=0
contadordirectorios=0
maxlineas=
directorio=
ficheros=

while [ $contador -le $maxlineas ]; do
    lineafichero=`$ruta_usuario | head -${contador} | tail -1 | ficheros` 
    lienadirectorio=`expr $(($ruta_usuario-$lineafichero)) | head -${contador} | tail -1 | directorio`
    
if [ $lineaficheros  = $ficheros ]; then
    contadorficheros=$((contadorficheros+1))
    
    elif [ $lineadirectorio = $directorio ]; then
    contdordirectorio=$((contadordirectorio+1))

    fi

fi

contador=$((contador+1))

done

echo "ficheros: $contadorficheros"
echo "directorios: $contadordirectorio" 
   
 
