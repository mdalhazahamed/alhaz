import 'package:flutter/material.dart';

class AdsPruct {
  final String title;
  final String subtitle;
  final String image;
  final String price;

  AdsPruct({
   required this.title,
   required this.subtitle,
   required this.image,
   required this.price,
  });
}

List <AdsPruct> adsproductsData = [
  
 AdsPruct(
   title: "Clock",
   subtitle: "Add to cart",
    price: "\$ 265",
      image: "assets/images/01.png",
      ),
      AdsPruct(
   title: "Clock N10",
   subtitle: "Add to cart",
    price: "\$ 455",
      image: "assets/images/02.png",
      ),
      

];