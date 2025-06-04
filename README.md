**To Check All Zimbra Mailboxes**

sudo -u zimbra /opt/zimbra/bin/zmprov -l gaa

**Backup All Zimbra Mailboxes**

Make file backup-mailbox.sh in /srv directory
vi /srv/backup-mailbox.sh

**Restore All Zimbra Mailboxes**

Make file restore-mailbox.sh in /srv directory
vi /srv/restore-mailbox.sh

After Save File and run these 2 command to Restore all mailbox automatic.
chmod +x /srv/restore-mailbox.sh
sh /srv/restore-mailbox.sh

