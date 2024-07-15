# syntax=docker/dockerfile:1
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node","src/index.js"]
EXPOSE 3000

# docker build -t getting-started .
# Finally, the -t flag tags your image. Think of this as a human-readable name for the final image. 
#Since you named the image getting-started, you can refer to that image when you run a container.
# The . at the end of the docker build command tells Docker that it should look for the Dockerfile in the current directory.