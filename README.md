# Customkali_Automated
Script para customizar kali linux, y la terminal con Kitty, zsh y ohmyzsh
## Descripción del mod
Este script realiza las siguientes modificaciones  

- Cambia wallpaper
- instala terminal Kitty
- instala ohmyzsh
- instala powerlevel10k (tema para ohmyzsh)
- instala npm y font-awesome (requisito para powerlevel10k)
- instala batcat (cat con esteroides)
- instala colorls (ls con estilo)  

- aplica automaticamente la configuración al terminal  
- agrega alias para cat (batcat) y ls (colorls)  

## Previsualización
#### Wallpaper  
![image](https://github.com/glmbxecurity/Customkali_Automated/assets/137443771/d8c164d8-e2f9-4b03-89d7-2df4e9affc0f)  
#### Prompt  
![image](https://github.com/glmbxecurity/Customkali_Automated/assets/137443771/955eba4f-13d9-47cc-b3e1-b48f0738618c)  
#### Cat  
![image](https://github.com/glmbxecurity/Customkali_Automated/assets/137443771/f160303f-1625-475f-9686-1056eaf9162f)  
#### Ls  
![image](https://github.com/glmbxecurity/Customkali_Automated/assets/137443771/27926f4a-a1fa-4d21-a8dc-0e57fea36dca)  



## Instalación
Clonar el repositorio en el escritorio con el siguiente comando, entrar en el directorio y dar permisos de ejecución a ambos scripts
```
git clone --depth=1 https://github.com/glmbxecurity/Customkali_Automated.git /home/kali/Desktop/personalizacion && cd /home/kali/Desktop/personalizacion && chmod +x install_parte1.sh install_parte2.sh
```

Ahora es tan sencillo como ejecutar el primer script ```install_parte1.sh``` e introducir la clave de administrador cuando sea necesario.  
Ahora ejecutamnos ```install_parte2.sh```, e introducir la clave de administrador cuando sea necesario.  
Una vez ejecutados ambos scripts, solo nos queda poner la terminal kitty como predeterminada. Para ello, nos vamos a ```Settings Manager > Default Applications```, y cambiamos el terminal que viene por defecto, por el terminal kitty.

