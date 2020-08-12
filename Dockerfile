FROM buildkite/puppeteer:5.2.1

WORKDIR /tests
ADD . . 

COPY package-lock.json package.json ./

RUN npm ci 
CMD [ "node", "src/__tests__/index.js" ]