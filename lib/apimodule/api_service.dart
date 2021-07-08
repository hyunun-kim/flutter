import '../productmodule/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService
{
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProducts() async {
    var response = await client.get(
        'https://api.github.com/users');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }
}