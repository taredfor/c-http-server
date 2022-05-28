# C Http Basic Server

Базовый образ: [buildpack-deps:bullseye](https://hub.docker.com/_/buildpack-deps)

Команда для сборки:
```shell
gcc -Wall -Wpedantic main.c mongoose.c -o c-server.bin
```

Настроить (в разных ветках):
* `image` - MultiStage Build с запуском (обратите внимание, получится динамически слинкованный исполняемый файл)
* `runner` - Runner с публикацией артифакта

**Важно**: вам нужно создать дополнительные `*.yml`, в каждом обработать эти ветки.
