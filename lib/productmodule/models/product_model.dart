import 'dart:convert';

List<ProductModel> productFromJson(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromJson(x)));

String productToJson(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  ProductModel({
    this.login,
  });

  String login;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    login: json["login"],

  );

  Map<String, dynamic> toJson() => {
    "login": login,

  };
}
