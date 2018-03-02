user="$(whoami)"
unzip expressvpn_desktop_shortcuts.zip
sed -i "s/username/${user}/g" *.desktop #ensure .desktop files are pointing at bash script by replacing string 'username' with $user variable
mkdir /home/$user/scripts
mv *.sh /home/$user/scripts
sudo chmod 755 /home/$user/scripts/* #make scripts executable
sudo chown root:root *.png
sudo mv *.png /var/lib/expressvpn
mv * /home/$user/Desktop
echo ""
echo ""
echo "setup complete, double click on expressvpn startup to start vpn, expressvpn disconnect to disconnect and expressvpn status to quickly see status of VPN"
echo ""
