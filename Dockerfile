FROM filebrowser/filebrowser:latest

COPY settings.json /defaults/settings.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]