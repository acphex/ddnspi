#!/bin/bash
YOUR_IP="GET_IP_URL"
RESULT=$(curl -s $YOUR_IP)
CURRENT_DOMAIN_IP=$(cat /home/ddnspi/currentip)
if [ "$RESULT" = "$CURRENT_DOMAIN_IP" ]; then
	echo "Current ip is $RESULT"
else
	curl -X POST https://dnsapi.cn/Record.Ddns -d 'login_token=LOGIN_TOKEN&format=json&domain_id=DOMAIN_ID&record_id=RECORD_ID&sub_domain=SUB_DOMAIN&value=$RESULT&record_type=A&record_line_id=0'
	echo "IP changed"
cat>/home/ddnspi/currentip<<EOF
$RESULT
EOF
fi