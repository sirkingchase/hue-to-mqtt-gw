# FROM gcr.io/distroless/nodejs:18
# COPY --from=build /opt/app/dist /opt/app/
#
# CMD ["/opt/app/index.js", "/var/lib/huemqtt/config.json"]

FROM node:20.8-alpine
COPY app/ /opt/app/
WORKDIR /opt/app/
RUN npm install
CMD ["node", "/opt/app/dist/app/lib/index.js", "/var/lib/huemqtt/config.json"]
