2]]--AJAX--
server.js or node.js

------------------------------------------------------------------
3--Git--

git init
git add 
git commit -m "Initial Commit"
git remote add origin https://
git push -u origin master

------------------------------------------------------------------
4]]--docker--

sudo apt update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

docker --version
docker run hello-world
docker pull nginx
docker run -d -p 8080:80 nginx
docker ps          # list running containers
docker stop <id>   # stop container
docker rm <id>     # remove container

FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
docker build -t my-static-app .
docker run -d -p 8081:80 my-static-app
--

docker images
docker run -it openjdk:17 jshell
jshell> System.out.println("Hello");
jshell> int a=10; 
jshell> int b=20; 
jshell> System.out.println(a+b);
int c=a+d;  

//2nd terminal
docker images
docker ps -a
docker stop your_container_id
docker ps -a

------------------------------------------------------------------
docker --version
docker info
docker pull nginx
docker run -d -p 8080:80 nginx
http://localhost:8080
docker stop <container_id>
docker rm <container_id>
docker images
docker rmi nginx

------------------------------------------------------------------
5]]--angular--

npm install -g @angular/cli@latest
ng new app
 -app.component.html
 -app.component.ts
ng serve

------------------------------------------------------------------

6]]--static-web--

-create folder 
cd folder
npm init -y
npm install express

copy code: server.js and index.html

------------------------------------------------------------------

7]]--Crud--

1) create a folder- open in terminal
npm init -y
npm install express dotenv mongoose body-parser cors nodemon

2) project-folder
  ->User.js
  ->userRoutes.js
  ->server.js/index.html
  ->index.html

3)postman
  ->url https://localhost:5000
route /api/users
POST  ----
body->raw->JSON->insert  
{"name": "john"} ->send
GET

4)MOngo
create DB : registrationDB
Collection :Users

npm start/server.js
