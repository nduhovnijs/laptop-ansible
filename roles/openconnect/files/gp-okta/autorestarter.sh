#!/bin/bash
# Never got to finish this

cleanup ()
{
    echo "Interrupt caught, exiting"
    exit 0
}

trap cleanup SIGINT SIGTERM

./launch.sh

while true; do
    status=$(ps -ef | grep gp-okta | grep -v grep)
    if [ -z "$status" ]; then
        sleep 5
	./launch.sh
        #pass okta | /opt/gp-okta/gp-okta.py /opt/gp-okta/gp-okta.conf
    fi
    sleep 1
done

### -------
# /etc/acpi/lid.sh 
#!/bin/bash

#grep -q open /proc/acpi/button/lid/*/state
#if [ $? = 0 ]; then
#    sleep 30
#    kill $(ps -ef | grep gp-okta | grep -v grep | awk -F " " '{print $2}')
#fi

### --------
# Put in file /etc/acpi/events/lm_lid
# event=button/lid.*
# action=/etc/acpi/lid.sh

### --------
# Restart /etc/init.d/acpid
