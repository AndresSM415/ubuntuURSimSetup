#!/bin/bash

# Directorio ra  z a partir del cual buscar las subcarpetas
DIRECTORIO_RAIZ="./"

# Buscar todas las subcarpetas y ejecutar el comando mvn install -P ursim
find "$DIRECTORIO_RAIZ" -type d | while read -r SUBCARPETA; do
    if [ -f "$SUBCARPETA/pom.xml" ]; then
        echo "Ejecutando mvn install -P ursim en $SUBCARPETA"
        (cd "$SUBCARPETA" && mvn install -P ursim)
    fi
done
