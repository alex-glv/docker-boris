FROM php:5.6-cli
COPY ./boris /usr/src/boris
WORKDIR /usr/src/boris
CMD [ "./bin/boris" ]