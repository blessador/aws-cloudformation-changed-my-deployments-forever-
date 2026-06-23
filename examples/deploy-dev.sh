
aws cloudformation deploy \
  --stack-name myapp-dev \
  --template-file templates/multi-environment.yaml \
  --parameter-overrides Environment=dev
