import 'package:flutter/material.dart';
import 'package:flutter_cataloge/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool isButtonChanged = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover
            ),
            const SizedBox(
              height: 20.0,
              child: Text("User"),
            ),
            Text(
                "Welcome $name", 
                style: const TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Column(children: [
                TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Username', 
                  labelText: 'Username'
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {
                      
                    });
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter Password', 
                    labelText: 'Password',
                    ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      isButtonChanged = true;
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: isButtonChanged ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: isButtonChanged ? const Icon(Icons.done, color: Colors.white,) : const Text(
                      "Login",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    decoration:  BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular( isButtonChanged ? 50 : 8)
                    ),
                  ),
                ),
                // ElevatedButton(
                //   child: const Text('Login'),
                //   style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                // )
              ],
            ),
            )
        ],
        ),
      ),
    );
  }
}