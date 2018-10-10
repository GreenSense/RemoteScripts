. ./common.sh.security

sshpass -p $GARDEN_SSH_PASSWORD ssh -o "StrictHostKeyChecking no" $GARDEN_SSH_USERNAME@$GARDEN_HOST -p $GARDEN_SSH_PORT "cd workspace/GreenSense/Index; sh view-garden.sh" || echo "Garden ($GARDEN_HOST) is down"
