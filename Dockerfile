FROM docker

RUN apk add git nodejs npm

WORKDIR /usr/src/app

#RUN docker login -u dgupton751 -p Vcdexswzaq1!

RUN git clone  https://github.com/dupton-vra/node-bulletin-board2.git

WORKDIR /usr/src/app/node-bulletin-board2
#RUN cd node-bulletin-board2
#RUN ls
#COPY package.json .
RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]

#COPY . .
