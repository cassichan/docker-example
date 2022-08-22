# Start with image called alpine with specific node version/ what operating system we have. 
FROM node:current-alpine3.16

# Directory within computer (docker image)
WORKDIR /src/

# Copy contents of where we are at within project into the docker image (first . is within this docker container, second . is what is within specific directory)
COPY . .

RUN npm install

# Setting up environment for project that points to a specific port port (process.env.PORT usually in project)
ENV PORT = 8000

#Let anything inside of PORT 8000 be accessible
EXPOSE 8000

# Array of what we would normally run when we start. Has to be without spaces
CMD ["npm","run","dev"]