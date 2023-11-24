from pymongo import MongoClient
def encrypt_data_field(uri: str) -> str:
    encrypt_client = MongoClient(uri)
    db = encrypt_client.medicalRecords
    collection = db['patients']
    o = collection.find_one()
    return f"{o['patientName']}"
