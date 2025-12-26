FROM node:12.2.0-alpine

#Working Directry
WORKDIR app

#Copy the Code
COPY . /app

#Install the dependecies
RUN npm install
RUN npm run test
EXPOSE 8000

#Run the code
CMD ["node","app.js"]
