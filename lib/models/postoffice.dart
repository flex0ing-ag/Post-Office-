class PostofficeModel {
  static final items = [
    Item(
        id: "ABC123",
        Name: "Jack",
        description: "Item dispatched from XYZ city",
        weight: 2.5,
        color: "#33505a",
        image:
            "https://atlas-content-cdn.pixelsquid.com/stock-images/parcel-cardboard-box-VRewo6B-600.jpg"),
  ];
}

class Item {
  final String id;
  final String Name;
  final String description;
  final num weight;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.Name,
      required this.description,
      required this.weight,
      required this.color,
      required this.image});
}

final Products = [
  Item(
      id: "ABC123",
      Name: "Jack",
      description: "Item dispatched from XYZ city",
      weight: 2.5,
      color: "#33505a",
      image:
          "https://atlas-content-cdn.pixelsquid.com/stock-images/parcel-cardboard-box-VRewo6B-600.jpg"),
];
