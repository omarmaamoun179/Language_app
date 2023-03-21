import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color, this.text, this.ontap});
  String? text;
  Color? color;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 65,
        width: 500,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
