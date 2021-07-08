import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/product_controller.dart';
import 'dart:developer';

class ProductDetailView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    log('data: ${Get.arguments['index']}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Center(
        child: Text(
          '유저네임: ${productController.productList[Get.arguments['index']].login}',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}