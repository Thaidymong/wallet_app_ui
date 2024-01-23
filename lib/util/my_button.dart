import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagsPath;
  final String buttonText;
  
  const MyButton({
    required this.iconImagsPath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 30,
                  spreadRadius: 10,
                )
              ]),
          child: Image.network(iconImagsPath),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        )
      ],
    );
  }
}
