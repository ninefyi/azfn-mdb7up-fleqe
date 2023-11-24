import azure.functions as func
import os
from shared_code import data_helpers

app = func.FunctionApp()

@app.function_name(name="HttpExample")
@app.route(route="hello", auth_level=func.AuthLevel.ANONYMOUS)
def test_function(req: func.HttpRequest) -> func.HttpResponse:
    return func.HttpResponse("HttpExample function processed a request!")

@app.function_name(name="EncryptData")
@app.route(route="encrypt", auth_level=func.AuthLevel.ANONYMOUS)
def encrypt_function(req: func.HttpRequest) -> func.HttpResponse:
    name = req.params.get('name')
    data = data_helpers.encrypt_data_field(os.environ['MONGODB_URI'])
    if not name:
        try:
            req_body = req.get_json()
        except ValueError:
            pass
        else:
            name = req_body.get('name')

    if name:
        pass
    else:
        name = "No body"
    
    return func.HttpResponse(f"Hello, {name} {data}. successfully.")
