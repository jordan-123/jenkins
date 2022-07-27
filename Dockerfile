FROM node:12 

WORKDIR /app

COPY package.json .

RUN npm install

COPY index.js .

EXPOSE 3000

CMD ["node","index.js"]  # runs this command when build and container ready

#TO MAKE AN IMAGE
# docker build -t myapp .

#to make a container
#docker run  -d -p 3007:3000 --name ContainerApp7  myapp

#to create a container you can go into at a time of creatio
#docker run -it -p 3000:3000 --name ContainerApp1 myapp  bash 

# connect to an existing container 
#docker exec -it ContainaerApp1 bash [-it means interactive mode]
#install nano
#nano index.js

#to view logs of a container  allows you to monitor what has gone wrong. shows previois commands done on container
# docker logs nameofContainer


#run command runs during the build of your image. building image allows all dependecies to be download and files are in write place
#CMD runs on container level
#Image is just a source.
#Code above is just making image personalised.

#creating container
#docker run myapp:[tag]


#Node app is running in container as localhost is running from host os not container.we have to create a brideg to map 3000 port in container to 3000 port in host os.
# to do that create another container docker run -d -p 3000:3000 myapp [-d is detach so you can do other qureis][-p is port destination so 3000 port should froward to 3000 port][3000:3000 - first 3000 is on your machine and second 3000 is on container]


#When creating a container adding --rm qualifier it removes conatier once the container is stopped or it exits.


#docker container inspect ContainerApp7 : gives you json data of that container
# use jsonviewer to parse data 

# docker image inspect myapp : inspects an image

# images has layer and you can see that when you inspect

# docker cp allows you to copy a local file into a container
#docker cp ./myname.txt fervent_jepsen:/app [to test if it works delete the file then inverse command. if file is brought back then it worked]
#docker cp  fervent_jepsen:/app/myname.txt  ./


# to allow people to create containers of your image on dockerhub
#docker tag app:v1  cmarvell13/app:v1   first make copy with same name as repo
#Docker login to link dockerhub with your machine
#docker push cmarvell13/app:tagname
# docker pull cmarvell13/app    to pull image from your repo into your machnine

#docker run -d -p 3000:3000 --env PORT=3000  --name cmarvell13 cmarvell13/app:v1

#docker compose
#d