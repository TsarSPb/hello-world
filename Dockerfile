# docker build -t tsarspb/hello-world:v1 -t tsarspb/hello-world:latest .
# docker run --name hello-world -d -p 8080:80 tsarspb/hello-world
FROM nginx:1.21.6
COPY index.html /usr/share/nginx/html