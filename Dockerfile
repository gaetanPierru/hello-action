FROM node:18-alpine

WORKDIR /projets/demo1/gaet/app
COPY ./ /projets/demo1/gaet/app

RUN ls -a

RUN npm install

RUN npm run build

RUN --mount=type=secret,id=mot

EXPOSE 3003

CMD ["npm", "run", "start"]
