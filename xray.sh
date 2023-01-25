#!/bin/sh
if [ ! -f UUID ]; then
  UUID="20914dfb-2cfc-4071-90fc-6a91437f1e61"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

