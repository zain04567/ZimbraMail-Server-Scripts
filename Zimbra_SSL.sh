#!/bin/bash

su - zimbra -c "cd /opt/zimbra/ssl/letsencrypt && \
/opt/zimbra/bin/zmcertmgr verifycrt comm privkey.pem cert.pem chain.pem"
