FROM node:lts-fermium


WORKDIR /repo

COPY . /repo

RUN yarn install

RUN yarn build

ENTRYPOINT [ "yarn", "start:prod" ]
