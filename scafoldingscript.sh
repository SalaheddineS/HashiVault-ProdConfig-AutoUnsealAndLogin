VAULT_ADDRESS="http://127.0.0.1:8200"
TLS_SKIP_VERIFY="-tls-skip-verify"

init_output=$(vault operator init $TLS_SKIP_VERIFY -address=$VAULT_ADDRESS)

unseal_keys=$(echo "$init_output" | grep "Unseal Key" | awk '{print $NF}')

echo "Unsealing Vault..."
for key in $unseal_keys; do
    vault operator unseal $TLS_SKIP_VERIFY -address=$VAULT_ADDRESS $key
done

initial_root_token=$(echo "$init_output" | grep "Initial Root Token" | awk '{print $NF}')
echo "Initial Root Token: $initial_root_token"

echo "Logging in..."
vault login $TLS_SKIP_VERIFY -address=$VAULT_ADDRESS $initial_root_token

for key in $unseal_keys; do
    echo the unseal key is $key
done

echo the token is $initial_root_token

echo "Vault login successful."


