# Azure Function with Field Level Encryption - Queryable Encryption (FLE-QE) 

## References

* [How to deploy Azure Functions locally](https://learn.microsoft.com/en-us/azure/azure-functions) - It is not support M1-M2 for QE.
* [Reference 1](https://techcommunity.microsoft.com/t5/azure-compute-blog/azure-functions-v2-python-programming-model-is-generally/ba-p/3827474)
* [Reference 2](https://techcommunity.microsoft.com/t5/azure-compute-blog/azure-functions-v2-python-programming-model/ba-p/3665168?ocid=AID754288&wt.mc_id=azfr-c9-scottha,CFID0741)
* [Reference 3](https://learn.microsoft.com/en-us/azure/azure-functions/functions-reference-python?tabs=asgi%2Capplication-level&pivots=python-mode-decorators#folder-structure)
* [Reference 4](https://stackoverflow.com/questions/58318794/import-custom-modules-in-azure-python-function)
* Create .env and provide information below
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

* Create appsettings.json and provide information below
```json
[
  {
    "name": "MONGODB_URI",
    "slotSetting": false,
    "value": ""
  },
  {
    "name": "SHARED_LIB_PATH",
    "slotSetting": false,
    "value": ".//mongo_crypt_shared//lib//mongo_crypt_v1.so"
  },
  {
    "name": "AZURE_TENANT_ID",
    "slotSetting": false,
    "value": ""
  },
  {
    "name": "AZURE_CLIENT_ID",
    "slotSetting": false,
    "value": ""
  },
  {
    "name": "AZURE_CLIENT_SECRET",
    "slotSetting": false,
    "value": ""
  },
  {
    "name": "AZURE_KEY_NAME",
    "slotSetting": false,
    "value": ""
  },
  {
    "name": "AZURE_KEY_VAULT_VERSION",
    "slotSetting": false,
    "value": ""
  },
  {
    "name": "AZURE_KEY_VAULT_ENDPOINT",
    "slotSetting": false,
    "value": ""
  }
]
```