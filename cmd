2]]--AJAX--
server.js or node.js

3--Git--

git init
git add 
git commit -m "Initial Commit"
git remote add origin https://
git push -u origin master

4]]--docker--

sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
docker --version
docker pull nginx
docker run -d -p 8080:80 nginx
docker ps
docker stop <container_id>
docker rm <container_id>


5]]--angular--

npm install -g @angular/cli@latest
ng new app
 -app.component.html
 -app.component.ts
ng serve

6]]--static-web--

-create folder 
cd folder
npm init -y
npm install express

copy code: server.js and index.html

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
