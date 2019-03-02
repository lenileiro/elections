import json
from .base import BaseTest

class TestGetRequest(BaseTest):    
    def test_fetch_products(self):
        response = self.client.get("/api/products", content_type="application/json")
        result = json.loads(response.data.decode('utf-8'))
        self.assertEqual(response.status_code, 200)
        self.assertEqual(result["status"], 200)