import 'package:flutter/material.dart';

class PickChild extends StatelessWidget {
  const PickChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(38, 38, 38, 1),
      body: Stack(children: <Widget>[
        Positioned(
          left: MediaQuery.of(context).size.width * (33 / 375),
          // right: 182,
          top: MediaQuery.of(context).size.height * (95 / 812),
          child: const Text(
            "Pick a child",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          left: 33,
          top: 229,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 8,
                      ),
                    ]),
                child: const Image(
                  image: AssetImage("assets/images/Ellipse 4.png"),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          left: 33,
          width: 310,
          top: 431,
          child: Divider(
            color: Color.fromARGB(255, 255, 255, 40),
            height: 1,
          ),
        ),
        Positioned(
          left: 33,
          top: 342,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 8,
                      ),
                    ]),
                child: const Image(
                  image: AssetImage("assets/images/Ellipse 5.png"),
                ),
              ),
              const Positioned(
                left: 112,
                child: Text(
                  "Joana Nantumbwe",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          left: 33,
          width: 310,
          top: 320,
          child: Divider(
            color: Color.fromARGB(255, 255, 255, 40),
            height: 1,
          ),
        ),
        Positioned(
          left: 33,
          top: 449,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 8,
                      ),
                    ]),
                child: const Image(
                  image: AssetImage("assets/images/Ellipse 6.png"),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
