#!/bin/bash

# RUN CHROMIUM WITH CNTLM AS PROXY.
chromium --proxy-server="https=127.0.0.1:3128;http=127.0.0.1:3128" --proxy-bypass-list="*.uci.cu,10.0.0.0/8,192.168.0.0/16,169.254.0.0/16"
exit 0
