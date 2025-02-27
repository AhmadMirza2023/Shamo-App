import 'package:toko_sepatu/models/category_model.dart';
import 'package:toko_sepatu/models/gallery_model.dart';

class ProductModel {
  final int id;
  final String name;
  final double price;
  final String description;
  final String tags;
  final CategoryModel category;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<GalleryModel> galleries;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.tags,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
    required this.galleries,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'],
        name: json['name'],
        price: double.parse(json['price'].toString()),
        description: json['description'],
        tags: json['tags'] ?? '',
        category: CategoryModel.fromJson(json['category']),
        galleries: (json['galleries'] as List<dynamic>?)
                ?.map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
                .toList() ??
            [],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'galleries': galleries.map((gallery) => gallery.toJson()).toList(),
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
    };
  }
}
