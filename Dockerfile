FROM nginx:alpine
ARG PORT
ENV PORT=${PORT:-80}
RUN echo $PORT
COPY ./site.template /etc/nginx/conf.d/site.template
COPY . /usr/share/nginx/html/
CMD ["/bin/sh", "-c", "envsubst < /etc/nginx/conf.d/site.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
