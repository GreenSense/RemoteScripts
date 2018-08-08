echo "Initializing GreenSense remote scripts"

COMMON_BLANK_FILE="common.sh.blank"
COMMON_SECURITY_FILE="common.sh.security"

if [ ! -f $COMMON_SECURITY_FILE ]; then
    echo "Copying $COMMON_BLANK_FILE to $COMMON_SECURITY_FILE..."
    cp $COMMON_BLANK_FILE $COMMON_SECURITY_FILE
fi


