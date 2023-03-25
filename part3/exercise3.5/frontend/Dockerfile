FROM node:16-alpine

RUN adduser -D appuser
WORKDIR /home/appuser/app
COPY package*.json ./

RUN npm ci
COPY . .

RUN npm run build
RUN npm install -g serve

RUN chown -R appuser:appuser /home/appuser/app
USER appuser

EXPOSE 5000
CMD ["serve", "-s", "-l", "5000", "build"]