import 'dart:ui';

import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _name;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _name = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //orange center
const Positioned(
          height: 706.8624877929688,
          width: 481.7652893066406,
          left: -70,
          top: 0,
            child: Image(
              image: AssetImage("assets/images/Vector 3.png"),
            ),
          ),

// middle dark
          const Positioned(
            height: 321.6341247558594,
            width: 393.5000305175781,
            left: -17,
            top: -2,
            child: Image(
              image: AssetImage("assets/images/Vector 1.png"),
            ),
          ),

          // small orange above
          const Positioned(
            height: 141,
            width: 426.5,
            left: -30.5,
            top: -10.5,
            

            child: Image(
              image: AssetImage("assets/images/Vector 4.png"),
            ),
          ),
          
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              const Text(
                "Create ",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
             const Text(
               " Account",
               style: TextStyle(
                 fontWeight: FontWeight.w600,
                 fontSize: 30,
                  color: Colors.white,
               ),
             ),
              TextField(
                autocorrect: false,
                decoration: const InputDecoration(
                  hintText: 'Name',
                ),
                controller: _name,
              ),
              TextField(
                enableSuggestions: false,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(hintText: 'enter email'),
                controller: _email,
              ),
              TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                  hintText: 'enter password',
                ),
                controller: _password,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign up'),
                  ),
                  const Icon(Icons.forward)
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Sign in"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
