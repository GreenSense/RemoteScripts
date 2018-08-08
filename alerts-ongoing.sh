# Clear previous alerts
clear

# Output the latest alerts
sh alerts.sh

echo "..."

# Sleep before repeating
sleep 2

# Repeat this script
sh alerts-ongoing.sh
