import 'dart:developer';

class Product {
  final int? id;
  final String? title;
  final int? price;
  final String? description;
  final List<String>? images;
  final String? creationAt;
  final String? updatedAt;
  final Category? category;
  const Product({this.id, this.title, this.price, this.description, this.images, this.creationAt, this.updatedAt, this.category});
  Product copyWith({
    int? id,
    String? title,
    int? price,
    String? description,
    List<String>? images,
    String? creationAt,
    String? updatedAt,
    Category? category,
  }) {
    return Product(
        id: id ?? this.id,
        title: title ?? this.title,
        price: price ?? this.price,
        description: description ?? this.description,
        images: images ?? this.images,
        creationAt: creationAt ?? this.creationAt,
        updatedAt: updatedAt ?? this.updatedAt,
        category: category ?? this.category);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'images': images,
      'creationAt': creationAt,
      'updatedAt': updatedAt,
      'category': category?.toJson(),
    };
  }

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'] == null ? null : json['id'] as int,
        title: json['title'] == null ? null : json['title'] as String,
        price: json['price'] == null ? null : json['price'] as int,
        description: json['description'] == null ? null : json['description'] as String,
        images: json['images'] == null ? null : (json['images'].map<String>((e) => e as String).toList()) as List<String>,
        creationAt: json['creationAt'] == null ? null : json['creationAt'] as String,
        updatedAt: json['updatedAt'] == null ? null : json['updatedAt'] as String,
        category: json['category'] == null ? null : Category.fromJson(json['category'] as Map<String, dynamic>));
  }

  static List<Product> fromJsonList(dynamic value) {
    // log(value);
    List<Product> data = [];
    for (Map<String, dynamic> element in value) {
      log(element.toString());
      data.add(Product.fromJson(element));
    }
    log(data.toString());
    return data;
  }

  @override
  String toString() {
    return '''Product(
                id:$id,
title:$title,
price:$price,
description:$description,
images:$images,
creationAt:$creationAt,
updatedAt:$updatedAt,
category:${category.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Product &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.title == title &&
        other.price == price &&
        other.description == description &&
        other.images == images &&
        other.creationAt == creationAt &&
        other.updatedAt == updatedAt &&
        other.category == category;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, title, price, description, images, creationAt, updatedAt, category);
  }
}

class Category {
  final int? id;
  final String? name;
  final String? image;
  final String? creationAt;
  final String? updatedAt;
  const Category({this.id, this.name, this.image, this.creationAt, this.updatedAt});
  Category copyWith({int? id, String? name, String? image, String? creationAt, String? updatedAt}) {
    return Category(id: id ?? this.id, name: name ?? this.name, image: image ?? this.image, creationAt: creationAt ?? this.creationAt, updatedAt: updatedAt ?? this.updatedAt);
  }

  Map<String, Object?> toJson() {
    return {'id': id, 'name': name, 'image': image, 'creationAt': creationAt, 'updatedAt': updatedAt};
  }

  static Category fromJson(Map<String, Object?> json) {
    return Category(
        id: json['id'] == null ? null : json['id'] as int,
        name: json['name'] == null ? null : json['name'] as String,
        image: json['image'] == null ? null : json['image'] as String,
        creationAt: json['creationAt'] == null ? null : json['creationAt'] as String,
        updatedAt: json['updatedAt'] == null ? null : json['updatedAt'] as String);
  }

  @override
  String toString() {
    return '''Category(
                id:$id,
name:$name,
image:$image,
creationAt:$creationAt,
updatedAt:$updatedAt
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Category && other.runtimeType == runtimeType && other.id == id && other.name == name && other.image == image && other.creationAt == creationAt && other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, name, image, creationAt, updatedAt);
  }
}

final kk = [
  {
    "id": 18,
    "title": "Sleek White & Orange Wireless Gaming Controller",
    "price": 69,
    "description":
        "Elevate your gaming experience with this state-of-the-art wireless controller, featuring a crisp white base with vibrant orange accents. Designed for precision play, the ergonomic shape and responsive buttons provide maximum comfort and control for endless hours of gameplay. Compatible with multiple gaming platforms, this controller is a must-have for any serious gamer looking to enhance their setup.",
    "images": [
      "https://i.imgur.com/ZANVnHE.jpeg",
      "https://i.imgur.com/Ro5z6Tn.jpeg",
      "https://i.imgur.com/woA93Li.jpeg",
    ],
    "creationAt": "2024-04-27T19:09:49.000Z",
    "updatedAt": "2024-04-27T19:09:49.000Z",
    "category": {
      "id": 2,
      "name": "Electronics",
      "image": "https://i.imgur.com/ZANVnHE.jpeg",
      "creationAt": "2024-04-27T19:09:49.000Z",
      "updatedAt": "2024-04-27T19:09:49.000Z",
    }
  }
];
