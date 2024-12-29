#!/bin/bash
# piprunner.sh - Ejecuta herramientas activando su entorno virtual automáticamente

TOOLS_DIR="$HOME/tools"
TOOL=$1

if [ -z "$TOOL" ]; then
    echo "[-] Uso: piprunner.sh <herramienta>"
    exit 1
fi

TOOL_DIR="$TOOLS_DIR/$TOOL"

if [ ! -d "$TOOL_DIR" ]; then
    echo "[-] La herramienta $TOOL no está instalada. Usa pipinstall.sh para instalarla."
    exit 1
fi

cd "$TOOL_DIR" || exit

# Activar entorno virtual y ejecutar shell interactiva
if [ -d "venv" ]; then
    echo "[+] Activando entorno virtual para $TOOL..."
    source venv/bin/activate
    echo "[+] Entorno virtual activado. Listo para ejecutar comandos."
    exec bash
else
    echo "[-] No se encontró entorno virtual para $TOOL. Usa pipinstall.sh para crearlo."
    exit 1
fi
