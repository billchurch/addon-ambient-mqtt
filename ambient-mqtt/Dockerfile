ARG BUILD_FROM=hassioaddons/base:2.2.0
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Copy root filesystem
COPY rootfs /

# Setup base
RUN \
    apk add --no-cache \
        nodejs=8.11.4-r0 \
        nodejs-npm=8.11.4-r0 \
    \
    && apk add --no-cache --virtual .build-dependencies \
        git=2.18.0-r0 \
    && npm set unsafe-perm true

# RUN \
#    git clone https://github.com/billchurch/ambient-mqtt.git /app

WORKDIR /app

# RUN git reset e6dceadbb9c0dbbba7c2337a4d1461474738d0b6 --hard

RUN \
    npm install

#    && apk del --purge .build-dependencies



# Build arugments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="Ambient MQTT" \
    io.hass.description="Ambient Weather API to MQTT Broker" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Bill Church <@billchurch>" \
    org.label-schema.description="Takes data from Ambient Weather API and publishes to MQTT broker" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Ambient MQTT" \
    org.label-schema.schema-version="1.0" \
    # org.label-schema.url="https://community.home-assistant.io/t/community-hass-io-add-on-ambient-mqtt/TBD" \
    # org.label-schema.usage="https://github.com/hassio-addons/addon-ambient-mqtt/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    # org.label-schema.vcs-url="https://github.com/hassio-addons/addon-ambient-mqtt/tree/master/ambient-mqtt" \
    org.label-schema.vendor="Community Hass.io Addons"