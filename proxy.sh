#!/bin/bash

echo -n "UCI User: "
read user
echo -n "UCI Password: "
read pass
echo ''

sudo sed -i '/^Username.*$/d' /etc/cntlm.conf
sudo sed -i '/^Domain.*$/d' /etc/cntlm.conf
sudo sed -i '/^Password.*$/d' /etc/cntlm.conf
sudo sed -i '/^Proxy.*$/d' /etc/cntlm.conf
sudo sed -i '/^NoProxy.*$/d' /etc/cntlm.conf
sudo sed -i '/^Listen.*$/d' /etc/cntlm.conf
sudo sed -i '/^PassLM.*$/d' /etc/cntlm.conf
sudo sed -i '/^PassNT.*$/d' /etc/cntlm.conf
sudo sed -i '/^PassNTLMv2.*$/d' /etc/cntlm.conf

echo "
Username	$user
Domain		UCI.CU
Password	$pass
Proxy     10.0.0.1:8080
Listen		3128
NoProxy		uci.cu, edu.cu, 10.36.32.186, localhost, 127.0.0.*, 10.*, 192.168.*
" | sudo tee -a /etc/cntlm.conf | grep 'XxXxXxXxXx'

echo $pass | cntlm -H -u $user@UCI.CU | sed -r '/^Password:.*$/d' | sudo tee -a /etc/cntlm.conf | grep 'XxXxXxXxXx'

sudo sed -i '/^unset [http_proxy|https_proxy|ftp_proxy|no_proxy].*$/d' ~/.bashrc /etc/bash.bashrc
sudo sed -i '/^export http_proxy.*$/d' ~/.bashrc /etc/bash.bashrc
sudo sed -i '/^export https_proxy.*$/d' ~/.bashrc /etc/bash.bashrc
sudo sed -i '/^export ftp_proxy.*$/d' ~/.bashrc /etc/bash.bashrc
sudo sed -i '/^export all_proxy.*$/d' ~/.bashrc /etc/bash.bashrc
sudo sed -i '/^export no_proxy.*$/d' ~/.bashrc /etc/bash.bashrc

var='
\nunset http_proxy https_proxy ftp_proxy no_proxy;
\nexport http_proxy=http://127.0.0.1:3128; # http://user:password@10.0.0.1:8080
\nexport https_proxy=https://127.0.0.1:3128;
\nexport ftp_proxy=http://127.0.0.1:3128;
\nexport all_proxy=socks://127.0.0.1:3128;
\nexport no_proxy="localhost,127.0.0.1,uci.cu,edu.cu"; # No wildcards. Complete ip address -> 10.36.32.186.
'

echo $var | bash
echo $var | sudo bash

echo $var | tee -a ~/.bashrc | sudo tee -a /etc/bash.bashrc | grep 'XxXxXxXxXx'

sudo systemctl restart cntlm

exit 0
