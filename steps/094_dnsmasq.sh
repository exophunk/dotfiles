###############################################################################
# dnsmasq setup                                                               #
###############################################################################


e_header "Configure dnsmasq"

e_arrow "Copy dnsmasq config"
sudo cp "configs/dnsmasq.conf" "/usr/local/etc/dnsmasq.conf"

e_arrow "Set dnsmasq as service"
sudo brew services start dnsmasq

e_arrow "Create resolver"
sudo mkdir /etc/resolver
sudo sh -c "echo 'nameserver 127.0.0.1' >> /etc/resolver/dev"
sudo sh -c "echo 'nameserver 127.0.0.1' >> /etc/resolver/test"
sudo sh -c "echo 'nameserver 127.0.0.1' >> /etc/resolver/proto"

e_arrow "Restart dnsmasq service"
sudo brew services restart dnsmasq