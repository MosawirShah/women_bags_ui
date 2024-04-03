import 'package:flutter/material.dart';
import 'package:women_bags/models/products.dart';
import 'package:women_bags/views/home_view.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

