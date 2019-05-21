FROM node:alpine

RUN apk add --no-cache git && \
    git clone https://github.com/RobinLinus/snapdrop.git && \
    cd snapdrop/server && \
    npm install

EXPOSE 8000

CMD ["node", "/snapdrop/server/index.js"]
