FROM nginx:alpine
# COPY . /usr/share/nginx/html/
COPY ./site.template /etc/nginx/conf.d/site.template
COPY ./index.html /usr/share/nginx/html/index.html