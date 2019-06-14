#!/bin/sh

export BINARYPATH=/root/.axecore
export CONFIGPATH=/root/.axecore
export CONFIGFILE=axe.conf

if [ -z "$BLSKEY" ]; then
    echo "must provide a blskey"
else
    sed -i '$d' $CONFIGPATH/$CONFIGFILE
    sed -i '$d' $CONFIGPATH/$CONFIGFILE
    sed -i '$d' $CONFIGPATH/$CONFIGFILE
    sed -i '$d' $CONFIGPATH/$CONFIGFILE
    
    echo masternode=1 >> $CONFIGPATH/$CONFIGFILE
    echo externalip=`curl ifconfig.co` >>$CONFIGPATH/$CONFIGFILE
    echo masternode=1 >> $CONFIGPATH/$CONFIGFILE
    echo masternodeblsprivkey=$BLSKEY >> $CONFIGPATH/$CONFIGFILE
fi

cat $CONFIGPATH/$CONFIGFILE
echo "starting axed"
cd $BINARYPATH
./axed
