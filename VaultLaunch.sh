docker volume create vault_data
docker run --name vault \
  -d \
  --rm \
  --network host \
  --cap-add IPC_LOCK \
  -v vault_data:/vault/data \
  -v ./config.hcl:/vault/config/config.hcl \
  -v ./scafoldingscript.sh:/vault/scafoldingscript.sh \
  vault:1.13.3 \
  vault server -config=/vault/config/config.hcl && \
docker exec -it vault /bin/sh /vault/scafoldingscript.sh
