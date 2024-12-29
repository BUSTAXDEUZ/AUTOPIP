#!/bin/bash
# pipinstall.sh - Automatiza la instalación de herramientas con pip y entornos virtuales

TOOLS_DIR="$HOME/tools"
TOOL=$1

if [ -z "$TOOL" ]; then
    echo "[-] Uso: pipinstall.sh <herramienta>"
    exit 1
fi

TOOL_DIR="$TOOLS_DIR/$TOOL"

# Crear directorio de herramientas si no existe
mkdir -p "$TOOL_DIR"
cd "$TOOL_DIR" || exit

# Crear entorno virtual si no existe
if [ ! -d "venv" ]; then
    echo "[+] Creando entorno virtual para $TOOL..."
    python3 -m venv venv
    source venv/bin/activate
    echo "[+] Instalando $TOOL con pip..."
    pip install "$TOOL"
    deactivate
else
    echo "[+] El entorno virtual ya existe. Activando e instalando $TOOL..."
    source venv/bin/activate
    pip install --upgrade "$TOOL"
    deactivate
fi

echo "[*] Instalación de $TOOL completada."
