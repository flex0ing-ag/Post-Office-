import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/postoffice.dart';
import 'package:flutter_application_2/widgets/drawer.dart';
import 'package:flutter_application_2/widgets/itemwidget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => PostofficeModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        title: const Text("Post Office"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index], // Use square brackets for list indexing
            );
          },
        ),
      ),
      // Builder gives a recycler view that means only items visible on the screen are rendered. Additional items render as the user scrolls.
      drawer: const MyDrawer(),
    );
  }
}
