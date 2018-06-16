ARG CMAKE_VERSION
FROM odaceo/cmake:${CMAKE_VERSION}

LABEL vendor="Odaceo" 
LABEL maintainer="Alexandre GARINO <alexandre.garino@odaceo.ch>"

ARG CONAN_VERSION
COPY scripts/conan.sh /root/
RUN set -eux; /root/conan.sh
