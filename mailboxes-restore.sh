#!/bin/bash

BACKUPDIR="/srv/backup/20150128";

clear
r
echo "Retrieve all zimbra user name..."

USERS=`su - zimbra -c 'zmprov -l gaa | sort'`;

for ACCOUNT in $USERS; do
NAME=`echo $ACCOUNT`;
echo "Restoring $NAME mailbox..."
su - zimbra -c "zmmailbox -z -m $NAME postRestURL '//?fmt=tgz&resolve=skip' $BACKUPDIR/$NAME.tgz";
done
echo "All mailbox has been restored sucessfully"
