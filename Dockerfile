FROM node:18-alpine

WORKDIR /projets/demo1/gaet/hello-action
COPY ./ /projets/demo1/gaet/hello-action

RUN touch .env
RUN ls -a

RUN npm install

RUN npm run build

RUN --mount=type=secret,id=mot,dst=.env  

RUN cat .env


EXPOSE 3004

CMD ["npm", "run", "start"]
