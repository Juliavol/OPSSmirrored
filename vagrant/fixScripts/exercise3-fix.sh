#!/bin/bash
sudo sed -i '13{s/deny from all/allow from all/g}' /etc/apache2/sites-enabled/000-default 
sudo service apache2 restart

