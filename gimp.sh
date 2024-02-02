#!/bin/bash
# Comprova si el GIMP està instal·lat
if ! command -v gimp &> /dev/null; then
    echo "El GIMP no està instal·lat. Actualitzant la llista de dependències i instal·lant el GIMP..."
    # Actualitza la llista de dependències i instal·la el GIMP
    sudo apt update
    sudo apt install -y gimp
else
    echo "El GIMP ja està instal·lat."
fi

# Executa el GIMP
echo "Executant el GIMP..."
gimp
