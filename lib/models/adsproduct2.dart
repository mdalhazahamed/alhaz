import 'package:flutter/material.dart';

class AdsPruct1 {
  final String title;
  final String subtitle;
  final String image;
  final String price;

  AdsPruct1({
   required this.title,
   required this.subtitle,
   required this.image,
   required this.price,
  });
}

List <AdsPruct1> adsproducts1Data = [
  
 AdsPruct1(
   title: "Apple Watch",
   subtitle: "Add to cart",
    price: "\$ 550",
      image: "assets/images/03.png",
      ),
      AdsPruct1(
   title: "Watch",
   subtitle: "Add to cart",
    price: "\$ 999",
      image: "assets/images/04.png",
      ),
      

];