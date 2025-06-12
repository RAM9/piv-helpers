# Introduction to PKCS#12 Generation Helpers

These helper scripts streamline the process of creating **PKCS#12 (PFX) files**, complete with their associated **RSA or ECC key pairs** and **certificates**. They're specifically designed to help you generate cryptographic assets for use with smart cards, such as **YubiKeys for macOS authentication**.

Typically, there are two distinct slots on a YubiKey used for different authentication purposes:

---

## YubiKey Slot Configurations

### 9a (Authorization Slot) - Key Pair Algorithm: ECC P384

This slot is configured with an **Elliptic Curve Cryptography (ECC) P384** key pair. We chose this algorithm for its strong compatibility with **FIPS 140** standards and its inherent cryptographic strength, making it ideal for authorization purposes.

### 9d (Key Management Slot) - Key Pair Algorithm: RSA2048

This slot uses an **RSA2048** key pair. This specific choice ensures **compatibility with the macOS operating system's Login Keychain**. Using a different cryptographic algorithm here could prevent the Login Keychain password from being signed correctly, leading to authentication issues.

---

## Script Overview

These scripts (e.g., `rsa.gen.zsh` and `secp.gen.zsh`) streamline the generation process. Each script expects **exactly two arguments**: a **prefix** and a **Common Name (CN)**.

When you provide these arguments:
* The script creates a dedicated directory structure for your cryptographic files.
* It then uses `openssl` commands to generate the necessary key pairs and certificates.

To prevent accidental data loss, the script checks if the target directory already exists. If it does, the script will **not overwrite** existing files and will exit gracefully. If arguments are not provided, the script displays helpful usage instructions and examples.

---

## How to Use

Follow these simple steps to generate your PKCS#12 files:

### Make the Scripts Executable:

First, ensure both scripts have execute permissions:

```bash
chmod +x rsa.gen.zsh
chmod +x secp.gen.zsh
```

### Run it from your terminal:

```bash
./rsa.gen.zsh <your_prefix> <your_common_name>
./secp.gen.zsh <your_prefix> <your_common_name>
```
### Example:

```bash
./rsa.gen.zsh 9d me.myname.net
./secp.gen.zsh 9a me.myname.net
```
