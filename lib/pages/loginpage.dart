import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, //properties
      child: Column(
        children: [
          Image.asset(
            "assets/image/login_po.png",
            fit: BoxFit.cover,
            height: 200,
            ),

            const SizedBox(
              height: 10.0,
            ),
          const Text(
            "Welcome!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(
              height: 10.0,
            ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Username",
              labelText: "Username"
            ),
          )
        ],
      ),
    );
  }
}
