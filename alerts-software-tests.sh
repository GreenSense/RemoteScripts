. ./common.sh.security

if ! ping -q -c1 -t1 $GARDEN_SOFTWARE_TESTS_HOST 2>/dev/null 1>/dev/null; then
  echo "Software Tests ($GARDEN_SOFTWARE_TESTS_HOST): *down"
fi
