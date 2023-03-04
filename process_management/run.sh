echo "Running App Process Management"
echo "Your API key is: $SUPERVISOR_TOKEN"
echo "Your API key is: $HASSIO_TOKEN"

printenv

CONFIG_PATH=/data/options.json

TARGET="$(bashio::config 'target')"

python3 app/app.py