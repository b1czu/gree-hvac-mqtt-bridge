#!/bin/sh
set -e

if [ "$MQTT_RETAIN" = null ]; then
	  MQTT_RETAIN=false
fi

echo "Running single instance for $HVAC_HOST"
echo "${HVAC_HOST}, ${MQTT_BROKER_URL}, ${MQTT_TOPIC_PREFIX}, ${MQTT_USERNAME}"
/usr/bin/node index.js \
	--hvac-host="${HVAC_HOST}" \
	--mqtt-broker-url="${MQTT_BROKER_URL}" \
	--mqtt-topic-prefix="${MQTT_TOPIC_PREFIX}" \
	--mqtt-username="${MQTT_USERNAME}" \
	--mqtt-password="${MQTT_PASSWORD}" \
	--mqtt-retain="${MQTT_RETAIN}"

