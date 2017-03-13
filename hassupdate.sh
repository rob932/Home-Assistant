##  These scripts are run from /home/pi 

#!/bin/bash

sudo su -s /bin/bash homeassistant
source /srv/homeassistant/bin/activate

echo "Processing update"
pip3 install --upgrade homeassistant

hass --script check_config
exit