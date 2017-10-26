###############################################################################
# dnsmasq setup                                                               #
###############################################################################


e_header "Configure dnsmasq"

e_arrow "Copy dnsmasq config"
cp "config/dnsmasq.conf" "/usr/local/etc/dnsmasq.conf"

e_arrow "Set dnsmasq as service"
sudo brew services start dnsmasq

e_arrow "Create resolver"
mkdir /etc/resolver
sudo echo "nameserver 127.0.0.1" > /etc/resolver/dev

e_arrow "Restart dnsmasq service"
sudo brew services restart dnsmasq