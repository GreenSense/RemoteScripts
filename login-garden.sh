. ./common.sh.security

sshpass -p $GARDEN_SSH_PASSWORD ssh -t $GARDEN_SSH_USERNAME@$GARDEN_HOST "cd workspace/GreenSense/Index && exec bash"
