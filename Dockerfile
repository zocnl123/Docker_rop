#Step:1 ubuntu (base image)
FROM ubuntu:latest

#Step:2 nginx install
RUN apt-get update && apt-get install -y -q nginx

#Step:3 file copy
COPY ./Index.html /var/www/html

#Step:4 container expose port #80
EXPOSE 80

#Step:5 nginx start
CMD ["nginx","-g","daemon off;"]
