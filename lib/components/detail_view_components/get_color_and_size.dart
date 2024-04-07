import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GetColourAndSize extends StatefulWidget {
  GetColourAndSize(
      {required this.producColor, required this.productSize, super.key});

  Color producColor;
  String productSize;
  //bool selected;

  @override
  State<GetColourAndSize> createState() => _GetColourAndSizeState();
}

class _GetColourAndSizeState extends State<GetColourAndSize> {
  int _selectedContainer = 1;
  @override
  Widget build(BuildContext context) {
    var myHeight = MediaQuery.of(context).size.height * 1;
    var myWidth = MediaQuery.of(context).size.width * 1;
    return Row(
      children: [
        //FIRST COULUMN WHICH INCLUDE LEFT SIDE STUPS
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Colour",style: TextStyle(color: Colors.black54, fontSize: 16)),
            Row(
              children: [
                //First
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedContainer = 1;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: myHeight * 0.06,
                        width: myWidth * 0.06,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: _selectedContainer == 1 ? Border.all(color: widget.producColor, width: 2): Border.all(color: Colors.white)),
                      ),
                      Positioned(
                        top: 5,
                        bottom: 5,
                        left: 5,
                        right: 5,
                        child: Container(
                          height: myHeight * 0.05,
                          width: myWidth * 0.05,
                          decoration:  BoxDecoration(
                              color:widget.producColor, shape: BoxShape.circle),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                //Second
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedContainer = 2;
                      print("second clicked");
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: myHeight * 0.06,
                        width: myWidth * 0.06,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: _selectedContainer == 2 ? Border.all(color: Colors.amber[600]!, width: 2): Border.all(color: Colors.white))
                      ),
                      Positioned(
                        top: 5,
                        bottom: 5,
                        left: 5,
                        right: 5,
                        child: Container(
                          height: myHeight * 0.05,
                          width: myWidth * 0.05,
                          decoration: BoxDecoration(
                              color: Colors.amber[600], shape: BoxShape.circle),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                //Third
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedContainer = 3;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: myHeight * 0.06,
                        width: myWidth * 0.06,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: _selectedContainer == 3 ? Border.all(color: Colors.black45, width: 2): Border.all(color: Colors.white)),
                      ),
                      Positioned(
                        top: 5,
                        bottom: 5,
                        left: 5,
                        right: 5,
                        child: Container(
                          height: myHeight * 0.05,
                          width: myWidth * 0.05,
                          decoration: BoxDecoration(
                              color: Colors.black45, shape: BoxShape.circle),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 100,
        ),
        //SECOND COLUMN CONTAINS RIGHT SIDE STUPS
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Size",style: TextStyle(color: Colors.black54, fontSize: 16)),
            const SizedBox(
              height: 8,
            ),
            RichText(
              text:  TextSpan(
                children: [
                  TextSpan(
                      text: widget.productSize,
                      style: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                 const TextSpan(
                      text: " cm",
                      style: TextStyle(color: Colors.black, fontSize: 20))
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
