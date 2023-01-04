#!/bin/sh
message_date=$(date +"%d.%m.%Y, %a %r")
discord_url="WEBHOOKURL"

  IP=$(echo $SSH_CLIENT | awk '{print $1}')
  HOSTNAME=$(hostname -f)
  IPADDR=$(hostname -I | awk '{print $1}')
generate_post_data() {
  cat <<EOF
{
  "username": "New SSH Login",
  "embeds": [{
      "title": "SSH Login",
      "description": "Login as ${USER} on $IPADDR ($HOSTNAME) from $IP",
      "color": "15548997",
      "footer": {
        "text": "$message_date",
        "icon_url": "https://cdn.mbdev.cc/mb/logo.gif"
      }
  }]
}
EOF
}


# POST request to Discord Webhook
curl -H "Content-Type: application/json" -X POST -d "$(generate_post_data)" $discord_url