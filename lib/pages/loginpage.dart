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
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("Hi Post Office!");
                    },
                    child: const Text("Login"),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
