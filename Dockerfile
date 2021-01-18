# Get image from Docker Hub
FROM ubuntu:18.04

# Label
LABEL maintainer="i.orfanidi@mail.ru"

EXPOSE 35000

# Update apps on the base image
RUN apt-get update && \
    apt-get install -y gcc cmake build-essential git && \
    git clone https://github.com/IvanOrfanidi/Echo.git && cd Echo && \
    git submodule init && git submodule update && \
    mkdir build && \
    ./install_lib.sh && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release .. && \
    cmake --build .

CMD ["./Echo/build/echo_server"]
