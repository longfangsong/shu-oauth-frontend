FROM node:10.15.3-alpine as builder
COPY . /shuoauthfrontend
WORKDIR /shuoauthfrontend
RUN npm install -g yarn && yarn && yarn build

FROM nginx:1.15.11-alpine
COPY --from=builder /shuoauthfrontend/dist/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD ["nginx","-g daemon off;"]
EXPOSE 80
