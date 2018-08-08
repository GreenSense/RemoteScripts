echo ""
echo "Setting up GreenSense remote scripts from GitHub"
echo ""

BRANCH=$1

if [ "$BRANCH" = "" ]; then
  if [ -d ".git" ]; then
    BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  else
    BRANCH="master"
  fi
fi

echo "Branch: $BRANCH"

if ! type "git" > /dev/null; then
  sudo apt-get update && sudo apt-get install -y git
fi

git clone --recursive https://github.com/GreenSense/RemoteScripts.git GreenSense/RemoteScripts -b $BRANCH && \

echo "Current directory:"
echo "  $PWD"

INDEX_DIR="GreenSense/RemoteScripts" && \

echo "GreenSense remote scripts directory:" && \
echo "  $INDEX_DIR" && \

cd $INDEX_DIR && \

sudo sh prepare.sh && \
sh init.sh && \

echo "" && \
echo "The GreenSense remote scripts are initialized and ready to use."
