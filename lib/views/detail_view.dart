import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:women_bags/components/home_view_components/product_list.dart';
import 'package:women_bags/models/products.dart';
import 'package:women_bags/constants/lorem_text.dart';
import 'package:women_bags/utils/screen_utils.dart';

import '../components/detail_view_components/custom_button.dart';
import '../components/detail_view_components/ecomerce_btn.dart';
import '../components/detail_view_components/favourite_button.dart';
import '../components/detail_view_components/get_color_and_size.dart';

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
            icon: SvgPicture.asset(
              'assets/icons/back.svg',
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {
                print("SEARCH PRESSED");
              },
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                print("ADD TO CART PRESSED");
              },
              icon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SvgPicture.asset(
                  'assets/icons/add_to_cart.svg',
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: Container(
          height: myHeight,
          width: myWidth,
          color: widget.prodObj.color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  height: myHeight * 0.15,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Aristrocratic Bag",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.prodObj.title.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: RichText(
                    text: TextSpan(
                  children: [
                    const TextSpan(
                        text: "Price: ",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    TextSpan(
                        text: "\$${widget.prodObj.price}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                  ],
                )),
              ),
              const Spacer(),
              Stack(
                children: [
                  Container(
                    height: myHeight * 0.6,
                    width: myWidth,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        color: Colors.white),

                    ///TODO: Parent column
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),

                          //SIZE AND COLOR
                          Container(
                              // color: Colors.red,
                              height: myHeight * 0.10,
                              width: double.infinity,
                              child: GetColourAndSize(
                                  producColor: widget.prodObj.color!,
                                  productSize: "12")),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(LoremText.String),
                          const SizedBox(
                            height: 20,
                          ),
                          //Container for quantity increase and decrease
                          Container(
                            height: myHeight * 0.07,
                            width: double.infinity,
                            color: Colors.white,
                            child: Row(children: [
                              CustomButton(btnIcon:Icons.add ,borderColor: widget.prodObj.color!,btnTap: (){} ),
                              const Padding(
                                padding: EdgeInsets.only(left: 14.0,right: 14),
                                child: Text("01",style: TextStyle(fontSize: 20),),
                              ),
                              CustomButton(btnIcon: Icons.add,borderColor: widget.prodObj.color!, btnTap: (){}),
                             SizedBox(width: ScreenUtils.myWidth(context) * 0.5,),
                             //Favourite button
                             FavouriteBtn(),
                              
                            ],),
                          ),
  
                           SizedBox(height: ScreenUtils.myHeight(context) * 0.02,),
                          ///CONTAINER FOR ECOMMERCE AND BTN
                          Container(
                            height: ScreenUtils.myHeight(context)* 0.1,
                            width: ScreenUtils.myWidth(context) * 1,
                            color: Colors.white,
                            child: EcommerceButton(imageUrl:widget.prodObj.url!,productColor: widget.prodObj.color! ,onPres: (){},),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(190, -160),
                    child: Container(
                      height: myHeight * 0.3,
                      width: myHeight * 0.3,
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          image: DecorationImage(
                        image: AssetImage(
                          widget.prodObj.url.toString(),
                        ),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
