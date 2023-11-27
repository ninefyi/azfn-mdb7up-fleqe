python -m pip install virtualenv
python -m virtualenv ./pyqefle/.venv
mkdir -p ./pyqefle/mongo_crypt_shared
curl -OL https://downloads.mongodb.com/linux/mongo_crypt_shared_v1-linux-x86_64-enterprise-ubuntu2004-7.0.2.tgz 
tar -zxvf mongo_crypt_shared_v1-linux-x86_64-enterprise-ubuntu2004-7.0.2.tgz -C ./pyqefle/mongo_crypt_shared
source pyqefle/.venv/bin/activate
python -m pip install -r pyqefle/requirements.txt
cat > .env<<EOF
export MONGODB_URI=""
export SHARED_LIB_PATH=".//mongo_crypt_shared//lib//mongo_crypt_v1.so"
EOF
cat > appsettings.json<<EOF
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
EOF
mv .env ./pyqefle/
source ./pyqefle/.venv/bin/activate
cat > local.settings.json<<EOF
{
    "IsEncrypted": false,
    "Values": {
        "AzureWebJobsStorage": "UseDevelopmentStorage=true",
        "FUNCTIONS_WORKER_RUNTIME": "python",
        "AzureWebJobsFeatureFlags": "EnableWorkerIndexing",
    }
}
EOF