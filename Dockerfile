FROM alpine AS stage
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

FROM filebrowser/filebrowser:latest
COPY settings.json /defaults/settings.json
COPY --from=stage /entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]