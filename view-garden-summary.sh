. ./common.sh.security

if ping -q -c1 -t1 $GARDEN_HOST 2>/dev/null 1>/dev/null; then
  echo "Garden ($GARDEN_HOST): online"
else
  echo "*Garden ($GARDEN_HOST): down"
fi
