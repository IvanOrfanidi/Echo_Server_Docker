# Get image from Docker Hub
FROM ubuntu:18.04

# Label
LABEL maintainer="i.orfanidi@mail.ru"

# Specify the working directory
WORKDIR /Echo

EXPOSE 35000

# Update apps on the base image
RUN apt-get update && \
    apt-get install -y gcc cmake build-essential git && \
    git clone https://github.com/IvanOrfanidi/Echo.git && \
    rm -rf build && mkdir build && \
    git submodule init && git submodule update && \
    ./install_lib.sh && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release .. && \
    cmake --build .

CMD ["./build/echo_server"]
