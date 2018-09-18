#!/usr/bin/with-contenv bash

# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

required_keys="api_key app_key mqtt_user mqtt_password mqtt_broker_address"

# check for requrired configuration keys
for i in $required_keys; do

  if ! hass.config.has_value $i; then
    hass.die "you need to set $i"
  fi

done

readonly ENV_FILE=/app/.env

hass.log.info "10 - Copying config"

{
    echo "API_KEY=$(hass.config.get "api_key")"
    echo "APP_KEY=$(hass.config.get "app_key")"
    echo "MQTT_USER=$(hass.config.get "mqtt_user")"
    echo "MQTT_PASSWORD=$(hass.config.get "mqtt_password")"
    echo "MQTT_BROKER_ADDRESS=mqtt://$(hass.config.get "mqtt_broker_address")"
    echo "MQTT_TOPIC_JSON=$(hass.config.get "mqtt_topic_json")"
} > "${ENV_FILE}"
