# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# Execute during the build of the image
ARG TEMPIO_VERSION BUILD_ARCH
RUN \
  curl -sSLf -o /usr/bin/tempio \
  "https://github.com/home-assistant/tempio/releases/download/${TEMPIO_VERSION}/tempio_${BUILD_ARCH}"

# Install system dependencies
RUN \
  apk add --no-cache \
  gfortran \
  g++ \
  gcc \
  automake \
  subversion \
  make \
  cmake \
  python3-dev \
  py3-scipy \
  py3-numpy \
  py3-pandas \
  graphviz \
  xdg-utils \
  libxml2-dev \
  libxslt \
  openblas-dev


RUN apk update

WORKDIR /app_data

# Copy App filesystem
COPY app/SmartHomeProcessMining /app_data/

RUN python3 -m ensurepip

RUN pip3 install --no-cache --upgrade pip setuptools==58.2.0
# RUN pip install .
# RUN pip install -r requierements.txt

