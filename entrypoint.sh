#!/bin/sh

# Копируем конфиг если отсутствует
if [ ! -f /config/settings.json ]; then
  cp /defaults/settings.json /config/
fi

chown -R 1000:1000 /config /database /srv

# ENTRYPOINT из https://github.com/filebrowser/filebrowser/blob/master/Dockerfile
exec su-exec 1000:1000 tini -- /init.sh filebrowser --config /config/settings.json