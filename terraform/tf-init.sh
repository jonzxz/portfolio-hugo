terraform init \
    -backend-config="access_key=$R2_ACCESS_KEY" \
    -backend-config="secret_key=$R2_SECRET_KEY" \
    -backend-config="endpoints=$R2_ENDPOINT"
