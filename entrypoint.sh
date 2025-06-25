#!/bin/sh

# Копируем конфиг если отсутствует
if [ ! -f /config/settings.json ]; then
  cp /defaults/settings.json /config/
fi

# ENTRYPOINT из https://github.com/filebrowser/filebrowser/blob/master/Dockerfile
exec tini -- /init.sh filebrowser --config /config/settings.json