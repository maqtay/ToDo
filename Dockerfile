FROM node:alpine as build-stage
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
RUN yarn
COPY . .
RUN yarn build
CMD ["yarn", "serve"]