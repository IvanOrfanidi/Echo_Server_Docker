## Echo_Server_Docker
Dockerfile для сборки эхо сервера.

### Сборка с использованием Docker
* Для сборки в образ выполнить:
```sh
docker build -t myimages/echo_server:latest https://github.com/IvanOrfanidi/Echo_Server_Docker.git
```

* Для запуска контейнера выполнить:
```sh
docker run -it --rm -p 127.0.0.1:35000:35000 myimages/echo_server
```
