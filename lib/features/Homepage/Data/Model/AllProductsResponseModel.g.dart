// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AllProductsResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllProductsResponseModel _$AllProductsResponseModelFromJson(
        Map<String, dynamic> json) =>
    AllProductsResponseModel(
      productsList: (json['productsList'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllProductsResponseModelToJson(
        AllProductsResponseModel instance) =>
    <String, dynamic>{
      'productsList': instance.productsList,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      title: json['title'] as String,
      price: json['price'] as num,
      category: json['category'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'category': instance.category,
      'description': instance.description,
      'image': instance.image,
    };
