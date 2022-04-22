import 'package:flutter/material.dart';
import 'package:flutterin8hour/utils/routes.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        // use SingleChildScrollView for scrollview
        child: Column(children: [
          Image.asset(
            "assets/images/login_page.jpg",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Welcome',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            // padding: const EdgeInsets.all(16.0),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Enter Username', labelText: 'Username'),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Enter Password', labelText: 'Password'),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: const Text('Login'),
                  style: TextButton.styleFrom(minimumSize: const Size(160, 40)),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
