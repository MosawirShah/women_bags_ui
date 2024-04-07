import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:women_bags/utils/screen_utils.dart';

class  EcommerceButton extends StatefulWidget {
 EcommerceButton({super.key,required this.imageUrl, required this.onPres,required this.productColor});

 Function onPres;
 String imageUrl;
 Color productColor;

  @override
  State< EcommerceButton> createState() => _EcommerceButtonState();
}

class _EcommerceButtonState extends State< EcommerceButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => widget.onPres,
          child: Container(
            height: ScreenUtils.myHeight(context) * 0.08,
            width: ScreenUtils.myWidth(context) * 0.22,
            decoration:  BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: widget.productColor,width: 2)
            ),
            child: Center(
              child: SvgPicture.asset("assets/icons/add_to_cart.svg",color: widget.productColor,),
            ),
          ),
        ),
        SizedBox(width: ScreenUtils.myWidth(context) * 0.06,),
        //Button Container
        GestureDetector(
          onTap: ()=> widget.onPres,
          child: Container(
            height: ScreenUtils.myHeight(context) * 0.07,
            width: ScreenUtils.myWidth(context) * 0.65,
            decoration: BoxDecoration(
              color: widget.productColor,
              borderRadius: BorderRadius.circular(18)
            ),
            child: Center(
              child: Text("BUY NOW", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
            ),
          ),
        ),

      ],
    );
  }
}