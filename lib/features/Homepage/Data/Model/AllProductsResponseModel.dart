import 'package:json_annotation/json_annotation.dart';

part 'AllProductsResponseModel.g.dart';

@JsonSerializable()
class AllProductsResponseModel {
  List<Product> productsList;

  AllProductsResponseModel({required this.productsList});

  factory AllProductsResponseModel.fromJson(final Map<String, dynamic> json) {
    return _$AllProductsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllProductsResponseModelToJson(this);
}

@JsonSerializable()
class Product {
  int id;
  String title;
  num price;
  String category;
  String description;
  String image;
  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.category,
      required this.description,
      required this.image});

  factory Product.fromJson(final Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
