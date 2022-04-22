import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter Username', labelText: 'Username'),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter Password', labelText: 'Password'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Thanks for login");
                },
                child: Text('Login'),
                style: TextButton.styleFrom(),
              )
            ],
          ),
        )
      ]),
    );
  }
}
