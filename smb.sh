#!/bin/bash

sudo smbpasswd -a $USER
systemctl reload smb
# smbpasswd -r uci.cu -U jctexidor

exit 0;