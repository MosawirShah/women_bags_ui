import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:women_bags/models/products.dart';

class DetailView extends StatefulWidget {
  DetailView({Key? key, required this.prodObj}) : super(key: key);

  Product prodObj;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    var myHeight = MediaQuery.of(context).size.height * 1;
    var myWidth = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.prodObj.color,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
              print("BACK PRESSED");
            },
            icon: SvgPicture.asset('assets/icons/back.svg')),
        actions: [
          IconButton(
              onPressed: () {
                print("SEARCH PRESSED");
              },
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: Colors.black54,
              )),
          IconButton(
              onPressed: () {
                print("ADD TO CART PRESSED");
              },
              icon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SvgPicture.asset(
                  'assets/icons/add_to_cart.svg',
                  color: Colors.black54,
                ),
              )),
        ],
      ),
      body: Container(
          height: myHeight,
          width: myWidth,
          color: widget.prodObj.color,
          child: Column(
            children: [
              const Spacer(),
              Stack(
                children: [
                  Container(
                    height: myHeight * 0.6,
                    width: myWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        color: Colors.white),
                  ),
                  Transform.translate(
                    offset: Offset(160,-200),
                    child: Container(
                      child: Image(
                        image: AssetImage(widget.prodObj.url.toString()),
                                     ),
                    ),
                  ),
                ],
              ),
              // Image(
              //                 image: AssetImage(widget.prodObj.url.toString()),
              //               )
            ],
          )),
    );
  }
}
