FROM golang:latest

WORKDIR $GOPATH/src/hello_ci
COPY . $GOPATH/src/hello_ci

RUN go get -u github.com/gin-gonic/gin && go get -u github.com/stretchr/testify/assert
RUN go build .

EXPOSE 80

ENTRYPOINT ["./hello_ci"]
