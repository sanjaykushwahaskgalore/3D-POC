FROM nginx:alpine

COPY ./index.html /usr/share/nginx/html

EXPOSE 1000

RUN sed -i 's/80/1000/g' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]