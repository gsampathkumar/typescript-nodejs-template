# Create image from nodejs base image
FROM node:9.5.0

ADD . /<appname>

# Change working directory to the cloned repo
WORKDIR /<appname>
# Install all the dependencies
RUN npm install
RUN npm install -g typescript
RUN npm run build
CMD ["npm", "start"]