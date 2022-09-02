FROM nginx
COPY ./dist/ /usr/share/nginx/html/
# 第一步nginx配置文件名称
  COPY ./demo.nginx.conf /etc/nginx/conf.d/demo.conf
EXPOSE 80
# FROM node:14-alpine as builder

# WORKDIR /code

# # 单独分离 package.json，是为了安装依赖可最大限度利用缓存
# ADD package.json yarn.lock /code/
# RUN yarn

# ADD . /code
# RUN npm run build

# # 选择更小体积的基础镜像
# FROM nginx:alpine
# COPY --from=builder code/dist /usr/share/nginx/html
