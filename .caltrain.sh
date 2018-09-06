#!/bin/bash

rm ~/.ssh/blessid-cert.pub
pushd .
cd ~/lyft/blessclient/
BLESSFIXEDIP=0.0.0.0/0 BLESSIPCACHELIFETIME=1 ./bless
ssh-keygen -L -f ~/.ssh/blessid-cert.pub | grep source-address
export BLESSIPCACHELIFETIME=1800
echo "If you see 0.0.0.0/0 in the above, you can ssh from anywhere."
#echo "You can also run 'export BLESSIPCACHELIFETIME=1800' to keep using this cert for 30 mins"
popd
