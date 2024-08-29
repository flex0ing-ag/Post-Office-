import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/postoffice.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        onTap: () {
          print("${item.Name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.Name),
        subtitle: Text(item.description),
        trailing: Text(
          "${item.weight} kg",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
