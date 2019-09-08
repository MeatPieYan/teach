FROM nginx:1.11

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY html /usr/share/nginx/html

HEALTHCHECK --interval=5s --timeout=2s --start-period=1m --retries=3 \
  CMD service nginx status

EXPOSE 8082
CMD ["nginx", "-g", "daemon off;"]
