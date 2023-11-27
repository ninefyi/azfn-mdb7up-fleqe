python -m pip install virtualenv
python -m virtualenv ./pyqefle/.venv
mkdir -p ./pyqefle/mongo_crypt_shared
curl -OL https://downloads.mongodb.com/linux/mongo_crypt_shared_v1-linux-x86_64-enterprise-ubuntu2004-7.0.2.tgz 
tar -zxvf mongo_crypt_shared_v1-linux-x86_64-enterprise-ubuntu2004-7.0.2.tgz -C ./pyqefle/mongo_crypt_shared
source pyqefle/.venv/bin/activate
python -m pip install -r pyqefle/requirements.txt