FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    python3 \
    python3-pip 

RUN pip3 install conan

# Create the build directory and copy the source code
RUN mkdir /app
WORKDIR /app
COPY . .


# Create and switch to build directory
RUN if [ -d "build_docker" ]; then rm -r build_docker/*; else mkdir build_docker; fi
WORKDIR build_docker

RUN echo pwd
RUN conan --version

RUN conan profile detect

# Install dependencies with Conan
RUN conan install .. --build=missing --output-folder=.

# Run CMake to configure and generate makefiles
RUN cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=on

# Build the project
RUN make