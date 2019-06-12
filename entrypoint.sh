#!/bin/sh

export BINARYPATH=/root/.axecore
export CONFIGPATH=/root/.axecore
export CONFIGFILE=axe.conf

if [ -z "$MNPRIVKEY" ] || [ -z "$BLSKEY" ]; then
    echo "must provide a mn key and blskey"
else
    sed -i '$d' $CONFIGPATH/$CONFIGFILE
    sed -i '$d' $CONFIGPATH/$CONFIGFILE
    sed -i '$d' $CONFIGPATH/$CONFIGFILE
    sed -i '$d' $CONFIGPATH/$CONFIGFILE
    
    echo masternodeprivkey=$MNPRIVKEY >> $CONFIGPATH/$CONFIGFILE
    echo externalip=`curl ifconfig.co` >>$CONFIGPATH/$CONFIGFILE
    echo masternode=1 >> $CONFIGPATH/$CONFIGFILE
    echo masternodeblsprivkey=$BLSKEY >> $CONFIGPATH/$CONFIGFILE
fi

cat $CONFIGPATH/$CONFIGFILE
echo "starting axed"
cd /root
./axed
