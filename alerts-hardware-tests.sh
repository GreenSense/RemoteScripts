. ./common.sh.security

if ! ping -q -c1 -t1 $GARDEN_HARDWARE_TESTS_HOST 2>/dev/null 1>/dev/null; then
  echo "*Hardware Tests ($GARDEN_HARDWARE_TESTS_HOST): down"
fi
