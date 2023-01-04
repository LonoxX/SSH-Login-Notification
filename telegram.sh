#!/bin/sh
CHATID="1010101010"
TOKEN="012345:XYZABC"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
if [ -n "$SSH_CLIENT" ]; then
  IP=$(echo $SSH_CLIENT | awk '{print $1}')
  HOSTNAME=$(hostname -f)
  IPADDR=$(hostname -I | awk '{print $1}')
  TEXT="Login as ${USER} on $IPADDR ($HOSTNAME) from $IP"
  curl -s --max-time 10 -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
fi