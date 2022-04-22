import 'package:flutter/material.dart';
import 'package:flutterin8hour/utils/routes.dart';

class LogInPage extends StatefulWidget {
  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";
  bool changeButton = false;

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
          Text(
            'Welcome $name',
            style: const TextStyle(
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
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

                // You cam implemented button in two way 1.Inkwaell and  2.ElevatedButton
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });

                    await Future.delayed(const Duration(seconds: 2));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    child: changeButton
                        ? const Icon(Icons.done, color: Colors.white)
                        : const Text(
                            'login',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                    width: changeButton ? 60 : 160,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        // shape:
                        //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 60 : 7.0)),
                    duration: const Duration(seconds: 2),
                  ),
                )

                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: const Text('Login'),
                //   style: TextButton.styleFrom(minimumSize: const Size(160, 40)),
                // )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
