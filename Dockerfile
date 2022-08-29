# Dockerfile to run jinrou in a docker container.
FROM node:8 AS build
WORKDIR /jinrou
COPY . .
RUN npm install
RUN cp -r config.default config
RUN ls
# RUN npm install
# RUN npm run production-build

FROM node:8
MAINTAINER uhyo
# define work directory
WORKDIR /jinrou
# First, install dependencies.
COPY --from=build /jinrou/package.json /jinrou/package-lock.json ./
RUN npm install --production
# copy source files.
COPY --from=build /jinrou/prizedata ./prizedata/
COPY --from=build /jinrou/public ./public/
COPY --from=build /jinrou/app.js ./
COPY --from=build /jinrou/manual ./manual/
COPY --from=build /jinrou/client ./client/
COPY --from=build /jinrou/server ./server/
COPY --from=build /jinrou/language ./language/
# expose to webserver.
VOLUME ["/jinrou/client/static/", "/jinrou/public/"]
# specify user to run the app.
USER node
# expose default port.
EXPOSE 8800
# define command.
CMD ["node", "app.js"]
