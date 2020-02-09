export CLUSTER=${CLUSTER:-dev}

if [[ ! "$CLOUD" =~ ^(azure|aws|google)$ ]]; then
  echo "\e[33mThe value of CLOUD env must be one of the following: [azure, aws, google]\e[0m"
fi
# source dependent env vars
. $PWD/.env/$CLOUD/$CLUSTER.sh