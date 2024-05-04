FROM ubuntu:22.04
SHELL ["/bin/bash", "-c"]

ADD ./app /app

# install apt requirements
RUN apt-get update && apt-get install -y \
  wget \
  build-essential \ 
  libncurses5   

# install clang
ENV LLVM_HOME=/opt/llvm/18.1.4
ENV PATH=${LLVM_HOME}/bin:$PATH
RUN mkdir -p ${LLVM_HOME}
RUN wget -q https://github.com/llvm/llvm-project/releases/download/llvmorg-18.1.4/clang+llvm-18.1.4-x86_64-linux-gnu-ubuntu-18.04.tar.xz -O /tmp/llvm.tar.gz
RUN tar -xvf /tmp/llvm.tar.gz --strip-components=1 -C ${LLVM_HOME}
RUN rm /tmp/llvm.tar.gz

# install cmake
ENV CMAKE_HOME=/opt/cmake/3.29.2
ENV PATH=${CMAKE_HOME}/bin:$PATH
RUN mkdir -p ${CMAKE_HOME}
RUN wget -q https://github.com/Kitware/CMake/releases/download/v3.29.2/cmake-3.29.2-linux-x86_64.tar.gz -O /tmp/cmake.tar.gz 
RUN tar -xvf /tmp/cmake.tar.gz --strip-components=1 -C ${CMAKE_HOME}
RUN rm /tmp/cmake.tar.gz

CMD ["tail", "-f", "/dev/null"]