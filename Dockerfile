FROM alpine:latest

ENV LANG C.UTF-8

RUN apk add --no-cache jq nodejs npm && \
npm set unsafe-perm true

# Copy data for add-on
WORKDIR /usr/src/app
COPY . .
RUN npm install

RUN chmod +x run_standalone.sh
CMD [ "./run_standalone.sh" ]

