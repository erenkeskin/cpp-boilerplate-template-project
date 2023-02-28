# C++ Template Project
It is a boilerplate template project that aims to increase the modularity and reusability of code in the C++ programming language, making software development easier. Conan 2.0 and Gtest libraries are also very useful libraries for developing C++ projects. This template project includes a quick and easy-to-use version of these two libraries. This allows C++ developers to quickly include Conan 2.0 and Gtest libraries when starting a new project, which speeds up the code development process and makes C++ projects more secure.

# Build
## Requirements
    C++20 compliant compiler
    Conan 2.0 Package Manager
    CMake version 3.20 or higher
    GoogleTest/Gtest (for unit tests)

## Building the library
Clone the repository to your local machine.

```
git clone https://github.com/erenkeskin/cpp-template-project.git
```
Create a build directory and navigate to it.
```
mkdir build && cd build
```
Install conan dependencies
```
conan install .. --build=missing --output-folder=.
```
Run CMake to generate the build files.
```
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
```
Build the library using the generated build files.
```
make
```
Run the library example
```
./bin/template
```

## Building the unit tests
Run CMake with the -DBUILD_TESTS=ON option to enable building the unit tests.
```
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=on
```
Build the unit tests using the generated build files.
```
make
```
Run the unit tests
```
./bin/template_test
./bin/template_test --gtest_repeat=10 --gtest_shuffle --gtest_break_on_failure
```

# Build using Docker
## Requirements
Docker version 18.09 or higher

## Building the image
Clone the repository to your local machine.
```
git clone https://github.com/erenkeskin/cpp-template-project.git
```
Navigate to the root of the repository.
```
cd cpp-template-project
```
Build the Docker image. Replace <image_tag> with a desired tag for the image.
```
docker build -t <image_tag> .
```
## Building the library
Run a container using the image built in the previous step. Replace <image_tag> with the tag used in the build step.
```
docker run -it <image_tag>
```
You are already inside the container app/build_docker folder, You may pass this instruction.
```
cd /app/build_docker
```
Run the library example
```
./bin/template
```
## Building the unit tests
You should navigate app/build_docker folder.
```
cd /app/build_docker
```
Run CMake with the -DBUILD_TESTS=ON option to enable building the unit tests.
```
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=on
```
Build the unit tests using the generated build files.
```
make
```
Run the unit tests
```
./bin/template_test
```

# Running using Docker Compose
## Requirements
    Docker version 18.09 or higher
    Docker Compose version 1.23 or higher

# Starting the service
Clone the repository to your local machine.
```
git clone https://github.com/erenkeskin/cpp-template-project.git
```
Navigate to the root of the repository.
```
cd cpp-template-project
```
Start the service using Docker Compose.
```
docker-compose up
```
Accessing the service \
You can check the logs of the service by running
```
docker-compose logs -f
```
You can stop the service by running
```
docker-compose down --remove-orphans
```

# Conclusion
The C++ Template Project is a tool that helps C++ developers write code faster and more securely. This template makes it easy to use Conan 2.0 and Gtest libraries and provides a good foundation for modular programming. This makes it possible to develop C++ projects faster and with fewer errors. Now, using this template, you can help develop your C++ projects more efficiently and securely.