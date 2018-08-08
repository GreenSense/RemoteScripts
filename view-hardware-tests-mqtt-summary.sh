. ./common.sh.security

if ping -q -c1 -t1 $GARDEN_HARDWARE_TESTS_MQTT_HOST 2>/dev/null 1>/dev/null; then
  echo "Hardware Tests MQTT ($GARDEN_HARDWARE_TESTS_MQTT_HOST): online"
else
  echo "*Hardware Tests MQTT ($GARDEN_HARDWARE_TESTS_MQTT_HOST): down"
fi
