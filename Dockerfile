# KODE15AS-drengen: serverer startsiden (web/) statisk.
FROM caddy:2-alpine
COPY web/ /srv/
EXPOSE 8101
CMD ["caddy", "file-server", "--root", "/srv", "--listen", ":8101"]
