import '../../commonmodule/AppColor.dart';
import '../../commonmodule/AppString.dart';
import '../controllers/product_controller.dart';
import './product_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppString.productList),
        ),
        body: Obx(() {
          if (productController.isLoading.value)
            return Center(child: CircularProgressIndicator());
          else
            return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 100,
                            child: Center(
                              child: ElevatedButton(
                                  onPressed: () => Get.to(ProductDetailView(), arguments: { 'index': index }), // Passing data by using "arguments"
                                  child: Text( '유저네임: ${productController.productList[index].login}',
                                    style: TextStyle(fontSize: 18),
                                  ),
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                    Container(
                      color: AppColor.grey200,
                      height: 2,
                    ),
                  ],
                );
              },
            );
        }));
  }
}
