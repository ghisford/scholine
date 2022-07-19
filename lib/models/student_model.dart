import 'package:flutter/material.dart';

class Student {
  Student({
    required this.name,
    this.photoUrl,
  });

  String name;
  String? photoUrl;

  Widget detailsTile() {
    return TextButton(
      onPressed: (){},
      // width: 310,
      // height: 95,
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 6,
                  color: Colors.white,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(photoUrl.toString()),
              ),
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 0,
            width: 30,
          ),
          TextButton(
            onPressed: (){},//TODO : navigate to the homepage
            child: Text(
              //TODO:Connect to backend to fetch student name and profile pic.
              name,
              style: const TextStyle(
                fontSize: 17,
                fontFamily: "raleway",
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
