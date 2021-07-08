import '../../apimodule/api_service.dart';
import '../models/product_model.dart';
import 'package:get/get.dart';
class ProductController extends GetxController
{
  var isLoading = true.obs;
  var productList = List<dynamic>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}