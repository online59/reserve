import 'dart:math';

class AddressModel {
  final String? address;
  final String? city;
  final String? state;
  final String? country;
  final String? zip;
  final String? latitude;
  final String? longitude;

  AddressModel({
    this.address,
    this.city,
    this.state,
    this.country,
    this.zip,
    this.latitude,
    this.longitude,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      address: json['address'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      zip: json['zip'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }

  //To json
  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'zip': zip,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}

enum StoreType implements Comparable<StoreType> {
  normal(value: "Normal"),
  highlighted(value: "Highlighted");

  final String value;

  const StoreType({required this.value});

  @override
  int compareTo(StoreType other) => toString().compareTo(other.toString());
}

enum StoreCategory implements Comparable<StoreCategory> {

  accessories (value: "Accessories"),
  automotive (value: "Automotive"),
  bakery (value: "Bakery"),
  bar (value: "Bar"),
  barber (value: "Barber"),
  beauty (value: "Beauty"),
  books (value: "Books"),
  cafe (value: "Cafe"),
  carWash (value: "Car Wash"),
  clothing (value: "Clothing"),
  electronics (value: "Electronics"),
  furniture (value: "Furniture"),
  grocery (value: "Grocery"),
  hairSalon (value: "Hair Salon"),
  hardware (value: "Hardware"),
  health (value: "Health"),
  jewelry (value: "Jewelry"),
  massage (value: "Massage"),
  pet (value: "Pet"),
  pharmacy (value: "Pharmacy"),
  restaurant (value: "Restaurant"),
  services (value: "Services"),
  shoes (value: "Shoes"),
  sports (value: "Sports"),
  stationery (value: "Stationery"),
  toys (value: "Toys");

  final String value;

  const StoreCategory({required this.value});

  static StoreCategory random() {
    const values = StoreCategory.values;
    return values[Random().nextInt(values.length)];
  }

  @override
  int compareTo(StoreCategory other) => value.compareTo(other.value);
}

class StoreModel {
  final int id;
  final String name;
  final String phone;
  final String email;
  final String image;
  final String? description;
  final StoreType type;
  final StoreCategory category;
  final String createdAt;
  final String updatedAt;
  final double rating;
  final AddressModel address;

  StoreModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.image,
    this.description,
    required this.type,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
    required this.rating,
    required this.address,
  });

  factory StoreModel.fromJson(Map<String, dynamic> json) {
    return StoreModel(
      id: json['_id'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      image: json['image'],
      description: json['description'],
      category: json['category'],
      type: json['subCategory'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      rating: json['rating'],
      address: AddressModel.fromJson(json['address']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'image': image,
      'description': description,
      'category': category,
      'subCategory': type,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'rating': rating,
      'address': address.toJson(),
    };
  }

  StoreModel copyWith({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? image,
    String? description,
    StoreType? type,
    StoreCategory? category,
    String? createdAt,
    String? updatedAt,
    double? rating,
    AddressModel? address,
  }) {
    return StoreModel(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      image: image ?? this.image,
      description: description ?? this.description,
      type: type ?? this.type,
      category: category ?? this.category,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rating: rating ?? this.rating,
      address: address ?? this.address,
    );
  }
}
