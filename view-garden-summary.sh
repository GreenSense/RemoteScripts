. ./common.sh.security

fping -c1 -t300 $GARDEN_HOST 2>/dev/null 1>/dev/null
if [ "$?" = 0 ]
then
  echo "Garden ($GARDEN_HOST): online"
else
  echo "*Garden ($GARDEN_HOST): down"
fi
