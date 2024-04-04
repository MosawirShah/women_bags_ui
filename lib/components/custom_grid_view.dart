import 'package:flutter/material.dart';
import 'package:women_bags/components/product_list.dart';
import 'package:women_bags/views/detail_view.dart';
class CustomGridView extends StatefulWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {

  ProductList productList =ProductList();
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 570,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: GridView.builder(
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.70,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10

            ),  itemBuilder: (context, index){

          return GestureDetector(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 210,
                  decoration: BoxDecoration(
                      color: productList.products[index].color,
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Image.asset(productList.products[index].url.toString()),
                ),
                const SizedBox(height: 5),
                Text(productList.products[index].title.toString()),
                const SizedBox(height: 5,),
                Text("\$ ${productList.products[index].price}"),
              ],
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return DetailView(prodObj: productList.products[index],);
              }),);
            },
          );
        }),
      ),
    );
  }
}
