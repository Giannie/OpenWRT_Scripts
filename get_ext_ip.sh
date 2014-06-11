a=$( ifconfig $( uci get network.wan.ifname ) | grep "inet addr" )
b=${a# *inet addr:}
expr match "$b" '\([0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\)'