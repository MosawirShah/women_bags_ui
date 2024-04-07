import 'package:flutter/material.dart';
import 'package:women_bags/components/home_view_components/wallets_list.dart';
class WalletsGridView extends StatefulWidget {
  const WalletsGridView({Key? key}) : super(key: key);

  @override
  State<WalletsGridView> createState() => _WalletsGridViewState();
}

class _WalletsGridViewState extends State<WalletsGridView> {
  WalletsList walletObj = WalletsList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 210,
            decoration: BoxDecoration(
                color: walletObj.walletList[0].color,
                borderRadius: BorderRadius.circular(18)
            ),
            child: Image.asset(walletObj.walletList[0].url.toString()),
          ),
          Text(walletObj.walletList[0].title.toString()),
          const SizedBox(height: 5,),
          Text("\$ ${walletObj.walletList[0].price}"),
        ],
      ),


    );
  }
}
