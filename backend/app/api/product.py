from flask import Blueprint, request, make_response, jsonify
bp = Blueprint('product-v2', __name__, url_prefix='/api/products')


@bp.route('', methods=['GET'])
def fetch_products():
        products = {
                'products': [
                        'Ice cream',
                        'Chocolate',
                        'Fruits',
                        'sweets',
                        'apples'
                        ]
                }

        return make_response(jsonify(
                {'status': 200, 'data': products}
                ), 200)