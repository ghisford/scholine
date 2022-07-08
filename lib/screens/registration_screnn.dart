import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
            left: 0,
            right: 0,
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
          Positioned(
            right: 5,
            top: 40,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
            ),
          ),

          ListView(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: const Text(
                      "Create Account",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  TextFormField(
                    cursorColor: Colors.white,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    autocorrect: false,
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        )),
                    controller: _name,
                  ),
                  TextField(
                    cursorColor: Colors.white,
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        )),
                    controller: _email,
                  ),
                  TextField(
                    cursorColor: Colors.white,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        )),
                    controller: _password,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.045,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
