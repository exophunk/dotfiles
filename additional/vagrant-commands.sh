###############################################################################
# Homestead Vagrant                                                           #
###############################################################################



# RUN THIS ON YOUR UBUNTU 16.06 HOMESTEAD VARANT BOX, NOT YOUR HOST

e_header "SETUP HOMESTEAD / VAGRANT"

# Disable PW check for NFS bindings
sudo sh -c "echo 'vagrant ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/vagrant-nfs"


# Add Mcrypt and ImageMagick for Craft CMS
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y mcrypt php7.0-mcrypt php7.1-mcrypt php-mcrypt 
sudo apt-get install -y imagemagick php-imagick
sudo service php7.0-fpm restart && sudo service apache2 restart