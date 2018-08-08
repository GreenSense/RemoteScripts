. ./common.sh.security

sshpass -p $GARDEN_SSH_PASSWORD ssh $GARDEN_SSH_USERNAME@$GARDEN_HOST "cd workspace/GreenSense/Index; sh check-garden.sh" || echo "Garden ($GARDEN_HOST) is down"
