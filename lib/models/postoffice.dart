// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PostofficeModel {
  static List<Item>? items;  //use question mark to allow null 
  /*= [Item(
        id: "ABC123",
        Name: "Jack",
        description: "Item dispatched from XYZ city",
        weight: 2.5,
        color: "#33505a",
        image:
            "https://atlas-content-cdn.pixelsquid.com/stock-images/parcel-cardboard-box-VRewo6B-600.jpg"),
  ]*/
}

class Item {
  final String id;
  final String Name;
  final String description;
  final num weight;
  final String color;
  final String image;

  // Constructor
  Item({
    required this.id,
    required this.Name,
    required this.description,
    required this.weight,
    required this.color,
    required this.image,
  });

  Item copyWith({
    String? id,
    String? Name,
    String? description,
    num? weight,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      Name: Name ?? this.Name,
      description: description ?? this.description,
      weight: weight ?? this.weight,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'Name': Name,
      'description': description,
      'weight': weight,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as String,
      Name: map['Name'] as String,
      description: map['description'] as String,
      weight: map['weight'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, Name: $Name, description: $description, weight: $weight, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.Name == Name &&
        other.description == description &&
        other.weight == weight &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        Name.hashCode ^
        description.hashCode ^
        weight.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}

// final Products = [
//   Item(
//       id: "ABC123",
//       Name: "Jack",
//       description: "Item dispatched from XYZ city",
//       weight: 2.5,
//       color: "#33505a",
//       image:
//           "https://atlas-content-cdn.pixelsquid.com/stock-images/parcel-cardboard-box-VRewo6B-600.jpg"),
// ];
