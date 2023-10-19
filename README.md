# Azure Function with Queryable Encryption (QE) in MongoDB 7up

## References

* [How to deploy Azure Functions locally](https://learn.microsoft.com/en-us/azure/azure-functions) - It is not support M1-M2 for QE.
* Create .env and provide below information
```
export MONGODB_URI=""
export SHARED_LIB_PATH=".//mongo_crypt_shared//lib//mongo_crypt_v1.so"
export AZURE_TENANT_ID=""
export AZURE_CLIENT_ID=""
export AZURE_CLIENT_SECRET=""
export AZURE_KEY_NAME=""
export AZURE_KEY_VERSION="
export AZURE_KEY_VAULT_ENDPOINT=""
```