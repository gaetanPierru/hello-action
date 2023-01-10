FROM node:18-alpine

WORKDIR /projets/demo1/gaet/hello-action
COPY ./ /projets/demo1/gaet/hello-action

RUN ls -a

RUN npm install

RUN npm run build

RUN --mount=type=secret,id=mot,dst=/projets/demo1/gaet/hello-action/.env

RUN cat /projets/demo1/gaet/hello-action/.env

EXPOSE 3004

CMD ["npm", "run", "start"]
