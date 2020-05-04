typefile="*?.txt"

if [ $file != $typefile ]; then
    echo "El nombre del fichero es incorrecto, introduzca un fichero .txt"
fi

contador=1
maximopid= `cat procesos.txt | wc -l `
contadorpid=0

while [ $contador -le $maximopid ]; then
linea= `cat procesos.txt | head -${contador} | tail -1`
pid= `echo $linea | awk '{print$2}'`

if [ $pid -ge $parametro ]; then
    contadorpid=$((contadorpid+1))

elif [ $contador -lt $parametro ]; then
    echo "El parametro introducido es incorrecto."
    break
    fi

fi

contador=$((contador+1))

done

echo "El numero de procesos PID es: "

