FROM golang:1.8.1-alpine

COPY src /app 
RUN cd /app && go build wiki.go

WORKDIR /app
CMD ["/app/wiki"]
