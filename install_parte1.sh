clear
echo "*Recuerda tener conexión a internet*"
echo "************************************"
echo
echo
echo "Este script hará lo siguiente:"
echo "- Apt update"
echo "- Descargar el wallpaper"
echo "- Instalar terminal Kitty"
echo "- Cambiar bash por zsh"
echo "- Instalar hacknerdfont, colorls, batcat"
echo "- Instalar Oh-My-Zsh"
echo ""
echo "========================================================================"
echo
echo "Enter para continuar..."
read A
clear
# Apt update
sudo apt update -y
clear
echo "Apt update realizado con éxito, descargando el wallpaper..."
sleep 2
# Descarga wallpaper
wget https://raw.githubusercontent.com/whoisYoges/lwalpapers/PicturesOnly/wallpapers/b-012.jpg
mv b-012.jpg /home/kali/Pictures
xfconf-query -c xfce4-desktop -p $(xfconf-query -c xfce4-desktop -l | grep "workspace0/last-image") -s /home/kali/Pictures/b-012.jpg


# Instalacion Kitty
clear
echo "Wallpaper correctamente descargado en /home/kali/Pictures"
echo "Se procederá a instalar kitty, Enter para continuar"
read A
sudo apt install kitty -y 
sudo cp kitty.conf /home/kali/.config/kitty



# Cambiar shell predeterminada
clear
echo "Cambiando shell a zsh..."
sleep 2
chsh -s $(which zsh) 
echo "Comprueba que tanto el usuario kali como root, tienen la zsh"
echo "si no es así, prueba a ejecutar el siguiente comando con el usuario que no tenga aplicada la zsh"
echo "chsh -s $(which zsh)"
echo
head -1 /etc/passwd
tail -1 /etc/passwd
echo
echo "Enter para continuar"
read A


# npm, font awesome, colorls y batcat
clear
echo "Se va a instalar hacknerdfont, colorls y batcat, por favor sea paciente..."
sleep 3
sudo cp hacknerdfont.ttf /usr/share/fonts
sudo gem install colorls
sudo apt install bat -y

# Consideraciones finales
clear
echo "Para usar kitty como predeterminado ir a Settings Manager > Default Applications y elegir el terminal kitty"
echo "batcat y colorls se reemplazan por cat y ls (originales), para ello se editará el fichero .zshrc en el script "install_parte2.sh""
echo "==================================================================================================================================="
echo
echo "Ahora se va a instalar Oh-my-zsh, una vez terminado, ejecutar el script "install_parte2.sh""
echo "Enter para instalar Oh-my-zsh"
read A
clear
# Instalando ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
