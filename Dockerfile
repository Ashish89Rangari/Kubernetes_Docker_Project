FROM nginx:latest
# use tag alpine to have a smaller image size 
# our base image is based on nginx and that is coming from dockerhub
LABEL author="Ashish" 
#who is the author of the image
COPY source/ /usr/share/nginx/html 
# Takes two parameters, source - copy what? and destination - copy where? 
#here source folder means were application files are present index.html
#here /usr/share/nginx/html is path when nginx server deployed it will pick up 
#our website application index.html page
EXPOSE 8080
#exposing the port8080 were our application will run
CMD ["nginx", "-g","daemon off;"]
#If you add a custom CMD in the Dockerfile, be sure to include -g daemon off;
#in the CMD in order for nginx to stay in the foreground,
#so that Docker can track the process properly 
#(otherwise your container will stop immediately after starting