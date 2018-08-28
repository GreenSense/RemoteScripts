. ./common.sh.security

sshpass -p $GARDEN_SSH_PASSWORD ssh -t $GARDEN_SSH_USERNAME@$GARDEN_HOST -p $GARDEN_SSH_PORT "cd workspace/GreenSense/Index && /bin/bash -i"
