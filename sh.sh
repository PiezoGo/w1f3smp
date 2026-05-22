#bin/bash


echo 'WIfi networks available'
nmcli dev wifi list || grep "MMU"


