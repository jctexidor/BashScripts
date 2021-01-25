#!/bin/bash

sudo apt-get install --yes python3-pip python3-virtualenv

sudo sed -i '/^unset PIP_[TIMEOUT|INDEX|INDEX_URL|TRUSTED_HOST].*$/d' ~/.bashrc /etc/bash.bashrc
sudo sed -i '/^export PIP_TIMEOUT.*$/d' ~/.bashrc /etc/bash.bashrc
sudo sed -i '/^export PIP_INDEX.*$/d' ~/.bashrc /etc/bash.bashrc
sudo sed -i '/^export PIP_INDEX_URL.*$/d' ~/.bashrc /etc/bash.bashrc
sudo sed -i '/^export PIP_TRUSTED_HOST.*$/d' ~/.bashrc /etc/bash.bashrc

var='
\nunset PIP_TIMEOUT PIP_INDEX PIP_INDEX_URL PIP_TRUSTED_HOST
\nexport PIP_TIMEOUT=120
\nexport PIP_INDEX=http://nexus.prod.uci.cu/repository/pypi-all/pypi
\nexport PIP_INDEX_URL=http://nexus.prod.uci.cu/repository/pypi-all/simple
\nexport PIP_TRUSTED_HOST=nexus.prod.uci.cu
'


echo $var | bash
echo $var | sudo bash
echo $var | tee -a ~/.bashrc | sudo tee -a /etc/bash.bashrc | grep 'XxXxXxXxXx'

exit 0;
