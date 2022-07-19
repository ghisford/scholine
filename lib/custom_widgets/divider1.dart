import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Divider1 extends StatelessWidget {
  const Divider1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const SizedBox(
          height: 8,
        ),
        Container(
          width: 310,
          height: 1,
          color: Color.fromRGBO(255, 255, 255, 0.2),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
