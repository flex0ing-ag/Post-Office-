import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Office"),
      ),
      body: Center(
        child: Container(
          child: const Text("Welcome to my app!"),
        ),
      ),
    drawer: const Drawer(),
    );
  }
}
