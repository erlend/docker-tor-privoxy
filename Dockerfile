FROM alpine

EXPOSE 8118 9050

RUN apk --no-cache add privoxy tor runit

COPY service /etc/service/

CMD ["runsvdir", "/etc/service"]
