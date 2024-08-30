import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_2/models/postoffice.dart';
import 'package:flutter_application_2/widgets/drawer.dart';
import 'package:flutter_application_2/widgets/itemwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 1));
    var productsJson =
        await rootBundle.loadString("assets/files/products.json");
    //print(productsJson);
    var decodeJsonData = jsonDecode(productsJson);
    //print(decodeJsonData);
    var productsData = decodeJsonData["products"];
    PostofficeModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(
        () {}); //whenever we need to change the data or reload the data, we have to call build method again anf for that we use set state
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(10, (index) => PostofficeModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        title: const Text("Post Office"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (PostofficeModel.items != null &&
                PostofficeModel.items!.isNotEmpty)
            ? ListView.builder(
                itemCount: PostofficeModel.items!.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: PostofficeModel
                        .items![index], // Use square brackets for list indexing
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      // Builder gives a recycler view that means only items visible on the screen are rendered. Additional items render as the user scrolls.
      drawer: const MyDrawer(),
    );
  }
}
