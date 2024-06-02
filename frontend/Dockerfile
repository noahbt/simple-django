# syntax=docker/dockerfile:1
FROM node:14.17.3
WORKDIR /code/frontend
COPY . /code/
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
