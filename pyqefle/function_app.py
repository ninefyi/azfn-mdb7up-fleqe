import azure.functions as func
from shared_code import data_helpers

app = func.FunctionApp()

@app.function_name(name="DecryptData")
@app.route(route="decrypt", auth_level=func.AuthLevel.ANONYMOUS)
def decrypt_function(req: func.HttpRequest) -> func.HttpResponse:
    data = data_helpers.read_data()
    return func.HttpResponse(f"Hello, {data}. successfully.")

@app.function_name(name="EncryptData")
@app.route(route="encrypt", auth_level=func.AuthLevel.ANONYMOUS)
def encrypt_function(req: func.HttpRequest) -> func.HttpResponse:
    name = req.params.get('name')
    if not name:
        try:
            req_body = req.get_json()
        except ValueError:
            pass
        else:
            name = req_body.get('name')

    if name:
        data_helpers.encrypt_data_field(name)
        pass
    else:
        name = "No body"
    
    return func.HttpResponse(f"Hello, {name}. successfully.")
