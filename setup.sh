#!/usr/bin/env bash

##############by JONESY167 https://github.com/Jonesy167###############################


user="$(whoami)"
unzip expressvpn_desktop_shortcuts.zip
sed -i "s/username/${user}/g" *.desktop #ensure .desktop files are pointing at bash script by replacing string 'username' with $user variable
mkdir /home/$user/Scripts
mv *vpn*.sh /home/$user/Scripts
sudo chmod 755 /home/$user/Scripts/* #make scripts executable
sudo chown root:root *.png
sudo mv *.png /var/lib/expressvpn/icons
mv *desktop /home/$user/Desktop
chmod 755 /home/$user/Desktop/*expressvpn*
echo ""
echo ""
echo "setup complete"
echo ""
echo "after first run the expressvpn icon will replace the default Ubuntu icon on the desktop"
echo ""
echo "double click on expressvpn startup to start vpn, expressvpn disconnect to disconnect and expressvpn status to quickly see status of VPN"
echo ""
echo "**Author JONESY167**"
exit 0
