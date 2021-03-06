FROM nginx:alpine

RUN apk add --no-cache git && \
    git clone https://github.com/RobinLinus/snapdrop.git && \
    cd snapdrop && \
    rm -rf /client && \
    cd server && \
    npm install

EXPOSE 3000

CMD ["node", "/snapdrop/server/index.js"]
