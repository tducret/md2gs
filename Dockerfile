FROM node:8.15.0 AS build-env

# docker build --no-cache -t md2gs .

# You can create a container and use the command with :
# docker run -it --rm md2gs

WORKDIR /app

RUN npm install md2gslides -g --prefix /app --unsafe

FROM gcr.io/distroless/nodejs

COPY --from=build-env /app /app

WORKDIR /app
ENTRYPOINT ["/nodejs/bin/node", "bin/md2gslides"]