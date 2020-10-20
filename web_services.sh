echo "welcome please select your options"
read choice
firewall=`sudo systemctl status firewalld`
apache=`sudo systemctl status apache2`
firewall1=`sudo systemctl stop firewalld`
apache1=`sudo systemctl stop apache2`
startrfirewall=`sudo systemctl start firewalld`
startapache=`sudo systemctl start apache2`

case $choice in
         1) status of the firewall is $firewall
                          ;;
         2) status of apache is $apache
                          ;;
         3) echo stop firewall by $firewall1
                          ;;
         4) echo stop apache by $apache1
                          ;;
         5) echo start firewall by $startrfirewall
                          ;;
         6) echo start apache by $startapache
                          ;;
         *) echo exit
esac
