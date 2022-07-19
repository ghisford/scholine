import 'package:flutter/material.dart';
import 'package:scholine/custom_widgets/divider1.dart';
import 'package:scholine/models/student_model.dart';

class PickChild extends StatefulWidget {
  PickChild({Key? key}) : super(key: key);

  @override
  State<PickChild> createState() => _PickChildState();
}

class _PickChildState extends State<PickChild> {
  Student student1 = Student(
      name: "Joanna nantumbwe ", photoUrl: "assets/images/Ellipse 4.png");
  Student student2 =
      Student(name: "Anna Nuwagira", photoUrl: "assets/images/Ellipse 5.png");
  Student student3 =
      Student(name: "Anita Shanel", photoUrl: "assets/images/Ellipse 6.png");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(38, 38, 38, 1),
      body: Stack(children: [
        const Positioned(
          top: 95,
          left: 33,
          child: Text(
            "Pick a child",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          top: 561,
          left: -20,
          child: Image(
            image: AssetImage(
              "assets/images/Vector 2.png",
            ),
          ),
        ),
        Positioned(
          left: 33,
          top: 670,
          child: Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {},
                child: const Text(
                  'Add a child',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        ),
        Positioned(
          left: 24,
          top: 180,
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: ListView(
                      padding: const EdgeInsets.only(left: 8),
                      scrollDirection: Axis.vertical,
                      children: [
                        student1.detailsTile(),
                        const Divider1(),
                        student2.detailsTile(),
                        const Divider1(),
                        student3.detailsTile(),
                       
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
