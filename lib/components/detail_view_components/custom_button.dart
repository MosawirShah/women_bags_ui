import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
   CustomButton({super.key, required this.btnIcon, required this.borderColor, required this.btnTap});
  IconData btnIcon;
  Color borderColor;
  Function btnTap;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  
  @override
  Widget build(BuildContext context) {
    var myHeight = MediaQuery.of(context).size.height;
    var myWidth = MediaQuery.of(context).size.width;
    return Container(
      height: myHeight * 0.05,
      width: myWidth * 0.11,
      decoration: BoxDecoration(
      
      border: Border.all(
        color: widget.borderColor,
        width: 1
      ),
      borderRadius: BorderRadius.circular(15),
      color: Colors.white70
    ),
      child: Icon(widget.btnIcon),
    );
  }
}