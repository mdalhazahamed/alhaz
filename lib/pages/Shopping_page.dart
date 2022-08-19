

import 'package:flutter/material.dart';
import 'package:new_project/Tab-Pages/Favorites.dart';
import 'package:new_project/Tab-Pages/My%20Ads.dart';
import 'package:new_project/models/products.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
         appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("App Bar", style: TextStyle(
            color: Colors.black),
            ),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  icon: Icon(Icons.shopping_basket_outlined),
                  text:"My Ads",
                  
                ),
                 Tab(
                   icon: Icon(Icons.favorite_border_outlined),
                  text:"My favourites",
                ),
              ],
            ),
          centerTitle: true,
        ),
        
        body: TabBarView(
          children: [
          Container(
            color: Colors.white,
            child: MyAds(),
          ),
          Container(
            color: Colors.white,
            child:MyFavourites(), 
          ),
        ],
        ),
      ),
    );
  }
}