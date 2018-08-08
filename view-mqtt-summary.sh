. ./common.sh.security

#ping -c1 -t300 "$GARDEN_MQTT_HOST" 2>/dev/null 1>/dev/null
if ping -q -c1 -t1 $GARDEN_MQTT_HOST 2>/dev/null 1>/dev/null; then
  echo "MQTT ($GARDEN_MQTT_HOST): online"
else
  echo "*MQTT ($GARDEN_MQTT_HOST): down"
fi
