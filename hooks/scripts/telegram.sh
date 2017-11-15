#!/bin/sh

TIMEOUT=10
# $1 repository
# $2 repo_url
TEXT="**Webhook Dockerhub**
Repository : $1
Url Repository : $2
"

URL="https://api.telegram.org/bot$TELE_TOKEN/sendMessage"
curl --data-urlencode -s --max-time $TIMEOUT -d "parse_mode=markdown&chat_id=$TELE_USERID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
echo "Send $TEXT to $TELE_USERID"
