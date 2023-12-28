clear
echo "*Recuerda tener conexion a internet*"
echo "**********************************************************************"
echo "En esta segunda parte se hará: "
echo "Instalación powerlevel10k"
echo "Copia de ficheros de configuración .p10k.zsh y .zshrc en /root y /home/kali"
echo "============================================================================="
echo
echo "Enter para continuar..."
read A
clear

# Instalando powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
clear
echo "Copiando ficheros .p10k.zsh y .zshrc en /root y /home/kali"
sudo cp .p10k.zsh /root
cp .p10k.zsh /home/kali
sudo cp .zshrc /root
cp .zshrc /home/kali
source .zshrc
sudo source .zshrc
echo "Ficheros copiados correctamente"
echo "INSTALACIÓN FINALIZADA!! ya puedes disfrutar de la personalización"



