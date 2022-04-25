FROM golang:alpine
LABEL maintainer="Daison Carino <daison12006013@gmail.com>"

RUN apk add --update build-base npm nodejs-current

WORKDIR /app
ADD gorvel/ .
COPY gorvel/go.mod gorvel/go.sum ./
RUN go mod download

# install missing reflex, build go and svelte
RUN sh cmd/install-reflex.sh
RUN sh cmd/check-binaries.sh
RUN sh cmd/build-go.sh
RUN sh cmd/build-svelte.sh

EXPOSE 8080 8081

# to serve, use this command
CMD ["sh", "./serve", "docker"]
