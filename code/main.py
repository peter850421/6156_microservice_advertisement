from flask import Flask, Response, request
from datetime import datetime
import json
from provider import provider
from advertisement import advertisement
from flask_cors import CORS
from flasgger import Swagger, LazyString, LazyJSONEncoder
from flasgger import swag_from

# Create the Flask application object.
app = Flask(__name__,
            static_url_path='/',
            static_folder='static/class-ui/',
            template_folder='web/templates')
app.json_encoder = LazyJSONEncoder

#swagger http://127.0.0.1:5011/apidocs/#/
swagger_template = dict(
info = {
    'title': LazyString(lambda: 'My first Swagger UI document'),
    'version': LazyString(lambda: '0.1'),
    'description': LazyString(lambda: 'This document depicts a      sample Swagger UI document and implements Hello World functionality after executing GET.'),
    },
    host = LazyString(lambda: request.host)
)
swagger_config = {
    "headers": [],
    "specs": [
        {
            "endpoint": 'hello_world',
            "route": '/hello_world.json',
            "rule_filter": lambda rule: True,
            "model_filter": lambda tag: True,
        }
    ],
    "static_url_path": "/flasgger_static",
    "swagger_ui": True,
    "specs_route": "/apidocs/"
}
CORS(app)
swagger = Swagger(app, template=swagger_template,
                  config=swagger_config)

#CORS(app)
#http://127.0.0.1:5011/api/advertisement/?product_id=3&user_id=4&ad_type=email&end_date=20221231
@swag_from("advertisement.yml", methods=['POST'])
@app.route("/api/advertisement/", methods=["POST"])
def get_health():
    data = request.args.to_dict()
    print(data)
    result = advertisement.insert_by_key(data['product_id'], data['user_id'],
                                      data['ad_type'], data['end_date'])

    if result:
        rsp = Response(json.dumps(result), status=200, content_type="application.json")
    else:
        rsp = Response("NOT FOUND", status=404, content_type="text/plain")

    return rsp

#http://127.0.0.1:5011/api/provider/2
@swag_from("provider.yml", methods=['GET'])
@app.route("/api/provider/<provider_id>", methods=["GET"])
def get_student_by_uni(provider_id):

    result = provider.get_by_key(provider_id)

    if result:
        rsp = Response(json.dumps(result), status=200, content_type="application.json")
    else:
        rsp = Response("NOT FOUND", status=404, content_type="text/plain")

    return rsp

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5011)
