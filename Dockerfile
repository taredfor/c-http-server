FROM buildpack-deps:bullseye as build 

WORKDIR /app

COPY . .

RUN gcc -Wall -Wpedantic main.c mongoose.c -o c-server.bin

RUN chmod +x  c-server.bin

FROM buildpack-deps:bullseye

WORKDIR /app

COPY --from=build  /app/c-server.bin .

CMD ["/app/c-server.bin"]







