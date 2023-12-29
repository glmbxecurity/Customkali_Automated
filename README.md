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
![image](https://github.com/glmbxecurity/Customkali_Automated/assets/137443771/a7b96b7a-b2e4-4c68-a81f-21ac31049e21)

#### Cat y ls 
 ![image](https://github.com/glmbxecurity/Customkali_Automated/assets/137443771/e43bf6bf-5cca-4971-bc89-47ebd4a4c58c)




## Instalación
Con el siguiente comando, se clona el repositorio, te diriges a la carpeta personalizacion y le das permisos de ejecución a ambos scripts
```
git clone --depth=1 https://github.com/glmbxecurity/Customkali_Automated.git /home/kali/Desktop/personalizacion && cd /home/kali/Desktop/personalizacion && chmod +x install_parte1.sh install_parte2.sh
```

Ahora es tan sencillo como ejecutar el primer script ```install_parte1.sh``` e introducir la clave de administrador cuando sea necesario.  
Ahora ejecutamnos ```install_parte2.sh```, e introducir la clave de administrador cuando sea necesario.  
Una vez ejecutados ambos scripts, solo nos queda  
  
* Ir a ```Settings Manager > Default Applications```, y cambiamos el terminal que viene por defecto, por el terminal kitty.
* Ir a ```Appearance``` y cambiar las 2 fuentes que aparecen, por la de hacknerdfont (sino no aparecerá el icono de kali en el terminal)

  
## Extra  
Si quieres cambiar alguna configuración:  
* Para personalizar los colores de la terminal, se pueden editar los ficheros /home/kali/.config/kitty/kitty.conf  
* Para personalizar los colores del prompt, se puede editar el fichero /home/kali/.p10k.zsh
```
En p10k.zsh los parametros son los siguientes:

  typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND=232 (Linea 187 del fichero)
  typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=148 (Linea 188 del fichero)
  typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='⭐' (linea 190 del fichero)
  typeset -g POWERLEVEL9K_DIR_BACKGROUND=4 (Linea 217 del fichero)
  typeset -g POWERLEVEL9K_DIR_FOREGROUND=254 (Linea 219 del fichero)
  

```

#### Recursos
[Descargar iconos aquí](https://www.nerdfonts.com/cheat-sheet)  
**Sacar paleta de colores de powerlevel10k** ``` for i in {0..255}; do print -Pn “%K{$i} %k%F{$i}${(l:3::0:)i}%f “ ${${(M)$((i%6)):#3}:+$’\n’}; done ```


