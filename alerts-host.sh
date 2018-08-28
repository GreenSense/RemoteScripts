. ./common.sh.security

LABEL=$1
HOST=$2
SSH_USERNAME=$3
SSH_PASSWORD=$4
SSH_PORT=$5

EXAMPLE_COMMAND="Example:\nsh alerts-host.sh [Label] [Host] [Username] [Password] [Port]"

if [ ! "$LABEL" ]; then
	echo "Please provide a label as an argument."
	echo "$EXAMPLE_COMMAND"
	exit 1
fi

if [ ! "$HOST" ]; then
	echo "Please provide a host name as an argument."
	echo "$EXAMPLE_COMMAND"
	exit 1
fi

if [ ! "$SSH_USERNAME" ]; then
	echo "Please provide a username as an argument."
	echo "$EXAMPLE_COMMAND"
	exit 1
fi

if [ ! "$SSH_PASSWORD" ]; then
	echo "Please provide a password as an argument."
	echo "$EXAMPLE_COMMAND"
	exit 1
fi

if [ ! "$SSH_PORT" ]; then
	echo "Please provide a port as an argument."
	echo "$EXAMPLE_COMMAND"
	exit 1
fi

if [ $IS_DEBUG = 1 ]; then
	echo "Label: $LABEL"
	echo "Host: $HOST"
	echo "Username: $SSH_USERNAME"
	echo "Port: $SSH_PORT"
fi

sshpass -p $SSH_PASSWORD ssh -o "StrictHostKeyChecking no" -q -p $SSH_PORT $SSH_USERNAME@$HOST "exit" || echo "$LABEL ($HOST:$SSH_PORT) is down"
