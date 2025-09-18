// data/models/Product.dart

class Product {
  final int id;
  final String title;
  final String description;
  final String? category;
  final double price;
  final double? discountPercentage;
  final double? rating;
  final int? stock;
  final List<String>? tags;
  final String? brand;
  final String? sku;
  final int? weight;
  final Dimensions? dimensions;
  final String? warrantyInformation;
  final String? shippingInformation;
  final String? availabilityStatus;
  final List<Review>? reviews;
  final String? returnPolicy;
  final int? minimumOrderQuantity;
  final Meta? meta;
  final List<String>? images;
  final String? thumbnail;

  Product({
    required this.id,
    required this.title,
    required this.description,
    this.category,
    required this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.tags,
    this.brand,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.reviews,
    this.returnPolicy,
    this.minimumOrderQuantity,
    this.meta,
    this.images,
    this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      title: json['title']?.toString() ?? "",
      description: json['description']?.toString() ?? "",
      category: json['category']?.toString(),
      price: (json['price'] is int)
          ? (json['price'] as int).toDouble()
          : (json['price'] as num?)?.toDouble() ?? 0.0,
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      stock: json['stock'] as int?,
      tags: (json['tags'] as List?)?.map((e) => e.toString()).toList(),
      brand: json['brand']?.toString(),
      sku: json['sku']?.toString(),
      weight: json['weight'] as int?,
      dimensions: json['dimensions'] != null
          ? Dimensions.fromJson(json['dimensions'])
          : null,
      warrantyInformation: json['warrantyInformation']?.toString(),
      shippingInformation: json['shippingInformation']?.toString(),
      availabilityStatus: json['availabilityStatus']?.toString(),
      reviews: (json['reviews'] as List?)
          ?.map((i) => Review.fromJson(i))
          .toList(),
      returnPolicy: json['returnPolicy']?.toString(),
      minimumOrderQuantity: json['minimumOrderQuantity'] as int?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta']) : null,
      images: (json['images'] as List?)?.map((e) => e.toString()).toList(),
      thumbnail: json['thumbnail']?.toString(),
    );
  }
}

class Dimensions {
  final double width;
  final double height;
  final double depth;

  Dimensions({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) {
    return Dimensions(
      width: (json['width'] as num?)?.toDouble() ?? 0.0,
      height: (json['height'] as num?)?.toDouble() ?? 0.0,
      depth: (json['depth'] as num?)?.toDouble() ?? 0.0,
    );
  }
}

class Review {
  final int rating;
  final String comment;
  final String date;
  final String reviewerName;
  final String reviewerEmail;

  Review({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      rating: json['rating'] ?? 0,
      comment: json['comment']?.toString() ?? "",
      date: json['date']?.toString() ?? "",
      reviewerName: json['reviewerName']?.toString() ?? "Anonymous",
      reviewerEmail: json['reviewerEmail']?.toString() ?? "",
    );
  }
}

class Meta {
  final String? createdAt;
  final String? updatedAt;
  final String? barcode;
  final String? qrCode;

  Meta({
    this.createdAt,
    this.updatedAt,
    this.barcode,
    this.qrCode,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      createdAt: json['createdAt']?.toString(),
      updatedAt: json['updatedAt']?.toString(),
      barcode: json['barcode']?.toString(),
      qrCode: json['qrCode']?.toString(),
    );
  }
}
