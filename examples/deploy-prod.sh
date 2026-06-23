aws cloudformation deploy \
  --stack-name myapp-prod \
  --template-file templates/multi-environment.yaml \
  --parameter-overrides Environment=prod
