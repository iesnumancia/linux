#!/bin/bash

# Comprobar si GIMP está instalado
if ! command -v gimp &> /dev/null; then
    echo "GIMP no está instalado. Actualizando lista de dependencias y instalando GIMP..."
    
    # Actualizar la lista de dependencias e instalar GIMP
    sudo apt update
    sudo apt install -y gimp
else
    echo "GIMP ya está instalado."
fi

# Verificar el idioma de GIMP y cambiar a español si es necesario
if [ -z "$LANG" ] || [[ ! "$LANG" == *'es'* ]]; then
    echo "Configurando GIMP en español..."
    
    # Establecer la variable de entorno del idioma de GIMP a español
    export LANG=es_ES.UTF-8

    # Puedes agregar aquí cualquier otro comando necesario para cambiar el idioma

    echo "GIMP configurado en español."
else
    echo "GIMP ya está configurado en español."
fi

# Ejecutar GIMP
echo "Ejecutando GIMP..."
gimp
