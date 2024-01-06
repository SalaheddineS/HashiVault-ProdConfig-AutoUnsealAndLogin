# HashiCorp Vault POC (Proof of Concept) Scaffold

## Overview

This repository contains a proof-of-concept script for automating the setup of HashiCorp Vault in a production configuration. The script initializes, unseals, and logs in to Vault, displaying the generated token and seal key on the terminal.

## Prerequisites

- Cloned project in your local env.
- Appropriate permissions to execute the script 

## Usage

1. **Clone the repository:**

    ```bash
    git clone https://github.com/SalaheddineS/HashiVault-ProdConfig-AutoUnsealAndLogin.git
    cd HashiVault-ProdConfig-AutoUnsealAndLogin
    ```

2. **Make the script executable:**

    ```bash
    chmod +x VaultLaunch.sh
    ```

3. **Run the script:**

    ```bash
    ./scaffold_vault.sh
    ```

4. **Everything is done automaticaly from here , you can keep the token and unseal keys if you wish so**

## Script Details

The `scaffold_vault.sh` script performs the following steps:

1. **Initialization:** Initializes a new Vault server with the recommended production configuration.

2. **Unsealing:** Automatically unseals the Vault with the generated unseal keys.

3. **Login:** Logs in to the Vault and retrieves an access token.

4. **Display Tokens and Keys:** Shows the generated access token and seal key on the terminal for reference.

## Important Note

Altough using a minimalistic production config ,this script is for demonstration and proof-of-concept purposes only. In a production environment, adhere to security best practices.

## Acknowledgments

Thanks to the HashiCorp team for providing the powerful Vault tool.

Happy Vaulting! 🗝️🔒
