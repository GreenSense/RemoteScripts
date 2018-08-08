. ./common.sh.security

fping -c1 -t300 $GARDEN_HOST 2>/dev/null 1>/dev/null
if [ "$?" = 1 ]
then
  echo "Garden ($GARDEN_HOST): down"
fi
