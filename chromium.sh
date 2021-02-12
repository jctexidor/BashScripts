#!/bin/bash

# RUN CHROMIUM WITH CNTLM AS PROXY.
chromium --proxy-server="https=127.0.0.1:3128;http=127.0.0.1:3128"
exit 0
