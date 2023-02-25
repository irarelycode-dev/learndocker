from node:6-alpine
expose 3000
run apk add --update tini
# -p flag in linux is used to create directories and sub-directories
run mkdir -p /usr/src/app
workdir /usr/src/app
copy package.json package.json
run npm install && npm cache clean
copy . .
cmd ["tini","--","node","./bin/www"]