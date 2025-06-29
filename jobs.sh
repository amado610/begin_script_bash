#!/bin/bash

#to schedule type: at 19:02 -f ./jobs.sh
#atq to see the jobs in queu
#atrm 3 to delete the job in queu
#at 19:02 070125 (date:mes dia ano) -f ./jobs.sh


logfile=jog_results.log

echo "The script ran at the following time: $(date)" > $logfile

