. ./common.sh.security

sshpass -p $GARDEN_MQTT_SSH_PASSWORD ssh -t $GARDEN_MQTT_SSH_USERNAME@$GARDEN_MQTT_HOST -p $GARDEN_MQTT_SSH_PORT "/bin/bash -i"
