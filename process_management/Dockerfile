# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Execute during the build of the image
ARG TEMPIO_VERSION BUILD_ARCH
RUN \
  curl -sSLf -o /usr/bin/tempio \
  "https://github.com/home-assistant/tempio/releases/download/${TEMPIO_VERSION}/tempio_${BUILD_ARCH}"


RUN apt update && apt install -y \
  python3 \
  python3-pip \
  graphviz \
  libblas-dev \
  liblapack-dev \
  libumfpack5

WORKDIR /app_data

# Copy App filesystem
COPY run.sh /app_data/
COPY app/SmartHomeProcessMining /app_data/

RUN pip install -r requirements.txt

# Start app
RUN chmod a+x ./run.sh
CMD [ "./run.sh" ]