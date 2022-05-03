FROM golang:alpine
LABEL maintainer="Daison Carino <daison12006013@gmail.com>"

RUN apk add --update build-base npm nodejs-current

WORKDIR /app
RUN mkdir src/
ADD lucid /app/lucid
ADD ui /app/lucid-ui
ADD setup /app/lucid-setup

WORKDIR /app/lucid
RUN go mod download
RUN sh ./cmd/install-reflex.sh
RUN sh ./cmd/check-binaries.sh
RUN sh ./cmd/build-go.sh

WORKDIR /app/lucid-ui
RUN sh /app/lucid-setup/scripts/build-svelte.sh

WORKDIR /app
EXPOSE 8080 8081 8082
CMD ["reflex", "-c", "lucid-setup/serve/servedocker.conf"]
