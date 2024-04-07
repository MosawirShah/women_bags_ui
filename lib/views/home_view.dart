import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:women_bags/components/home_view_components/custom_grid_view.dart';
import 'package:women_bags/components/home_view_components/wallet_grid_view.dart';
import 'package:women_bags/models/products.dart';

class HomeView extends StatefulWidget {
  //const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() {
    return _HomeViewState();
  }
}

class _HomeViewState extends State<HomeView> {
  List<String> categories = ["Handbag", "Wallets", "Footwears", "Belts"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
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
      body: Column(
       // scrollDirection: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Women",
              style: TextStyle(
                  fontSize: 22,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 30, top: 10),
                    child: GestureDetector(
                      onTap: (){
                      setState(() {
                        selectedIndex = index;
                      });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(

                              // height: 30,
                              width: 70,
                              child: Text(
                                categories[index],
                                style: TextStyle(
                                  fontWeight: selectedIndex==index ? FontWeight.w500: FontWeight.normal ,
                                    color: selectedIndex == index? Colors.black: Colors.black54),
                              )),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            height: 4,
                            width: 40,
                            color: selectedIndex == index
                                ? Colors.black54
                                : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
 //GRIDVIEW
          categories[selectedIndex] == "Handbag" ? CustomGridView() : WalletsGridView(),

        ],
      ),

    );
  }
}
