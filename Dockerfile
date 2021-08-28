FROM golang:alpine

WORKDIR /go/src/app

# COPY go.mod .

# COPY go.sum .
RUN go mod init github.com/nenov92/simple-go-service/cmd/simple-go-service

RUN go mod tidy

RUN go mod download

# RUN go mod vendor

# COPY main.go .

ADD / .

RUN apk update && apk add git

# RUN git clone https://github.com/nenov92/simple-go-service.git

# RUN go install github.com/nenov92/simple-go-service/cmd/simple-go-service/internal
# RUN go get github.com/nenov92/simple-go-service/cmd/simple-go-service/internal


# RUN go clean -modcache
# RUN go get github.com/nenov92/simple-go-service/cmd/simple-go-service/internal

RUN go build -o "testapp"

CMD ["./testapp"]