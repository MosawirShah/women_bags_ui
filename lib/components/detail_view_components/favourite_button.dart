import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:women_bags/utils/screen_utils.dart';

class FavouriteBtn extends StatefulWidget {
  const FavouriteBtn({super.key});

  @override
  State<FavouriteBtn> createState() => _FavouriteBtnState();
}

class _FavouriteBtnState extends State<FavouriteBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtils.myHeight(context) * 0.04,
      width: ScreenUtils.myWidth(context) * 0.07,
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle
      ),
      child: Center(child: Icon(Icons.heart_broken,color: Colors.white,size: 20,)),
    );
  }
}
