 ░▒▓██████▓▒░  ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓████████▓▒░  ░▒▓██████▓▒░  ░▒▓███████▓▒░  ░▒▓█▓▒░ ░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓████████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓███████▓▒░  ░▒▓█▓▒░ ░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░ ░▒▓█▓▒░        
░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░    ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░ ░▒▓█▓▒░        
░▒▓█▓▒░░▒▓█▓▒░  ░▒▓██████▓▒░     ░▒▓█▓▒░      ░▒▓██████▓▒░  ░▒▓█▓▒░        ░▒▓█▓▒░ ░▒▓█▓▒░    

🛠️ pip-tools: Automatización de Entornos Virtuales para Herramientas pip
Este repositorio contiene dos scripts (pipinstall.sh y piprunner.sh) diseñados para automatizar la instalación y ejecución de herramientas Python usando entornos virtuales (venv).

🎯 ¿Para Quién es Útil?
Hackers éticos y bug bounty hunters que utilizan herramientas como sqlmap, ffuf, frida, etc.
Desarrolladores que trabajan con múltiples entornos y quieren evitar conflictos de dependencias.
Admins de sistemas y DevOps que buscan automatizar entornos de prueba y desarrollo.

🚀 Descripción General
pipinstall.sh – Crea un entorno virtual y instala herramientas de pip automáticamente.
piprunner.sh – Activa el entorno virtual correspondiente y ejecuta herramientas sin necesidad de activar el entorno manualmente.
Estos scripts simplifican el proceso de instalación y ejecución de herramientas comunes, especialmente útil para configuraciones de pentesting, desarrollo o gestión de dependencias.
## ⚙️ Instalación

1. **Clonar el Repositorio**
    ```bash
    git clone https://github.com/TuNombreDeUsuario/pip-tools.git
    cd pip-tools
    ```

2. **Instalar los Scripts Globalmente**
    ```bash
    sudo mv pipinstall.sh /usr/local/bin/
    sudo mv piprunner.sh /usr/local/bin/
    sudo chmod +x /usr/local/bin/pipinstall.sh
    sudo chmod +x /usr/local/bin/piprunner.sh
    ```

## 🧰 Uso de los Scripts

1. **Instalar Herramientas (pipinstall.sh)**
    Crea automáticamente un entorno virtual y instala la herramienta con pip.
    ```bash
    pipinstall.sh <nombre-de-la-herramienta>
    ```
    Ejemplo:
    ```bash
    pipinstall.sh frida-tools
    pipinstall.sh apktool
    ```

2. **Ejecutar Herramientas (piprunner.sh)**
    Activa el entorno virtual y permite usar la herramienta directamente.
    ```bash
    piprunner.sh <nombre-de-la-herramienta>
    ```
    Ejemplo:
    ```bash
    piprunner.sh frida-tools
    piprunner.sh apktool
    ```

## 🔗 Alias para Mayor Rapidez (Opcional)
Si deseas ejecutar las herramientas más rápido, puedes crear alias en tu `.bashrc` o `.zshrc`:
```bash
echo "alias frida='piprunner.sh frida-tools'" >> ~/.bashrc
echo "alias apktool='piprunner.sh apktool'" >> ~/.bashrc
source ~/.bashrc
```
Ahora puedes ejecutar:
```bash
frida
apktool
```

## 🧪 Ejemplo Completo
```bash
pipinstall.sh sqlmap
piprunner.sh sqlmap
```
Esto instalará `sqlmap` en un entorno virtual y lo ejecutará directamente desde `piprunner.sh`.

## 🛡️ Ventajas
- **Aislamiento de dependencias:** Cada herramienta tiene su propio entorno virtual.
- **Automatización total:** Evita escribir `source venv/bin/activate` manualmente.
- **Escalabilidad:** Agregar nuevas herramientas es tan simple como ejecutar `pipinstall.sh`.

## 🤝 Contribuciones
Las contribuciones son bienvenidas. Si tienes ideas para mejorar los scripts o agregar nuevas funcionalidades, ¡no dudes en enviar un pull request!

## 📜 Licencia
Este proyecto está bajo la licencia MIT. Puedes modificar y redistribuir libremente.
