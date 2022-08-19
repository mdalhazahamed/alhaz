import 'package:flutter/material.dart';

class Product {
  final String title;
  final String subtitle;
  final String image;
  final String price;

  Product({
   required this.title,
   required this.subtitle,
   required this.image,
   required this.price,
  });
}

List <Product> productsData = [
  
 Product(
   title: "Clock",
   subtitle: "Add to cart",
    price: "\$ 265",
      image: "assets/images1/01.jpg",
      ),
      Product(
   title: "Clock N10",
   subtitle: "Add to cart",
    price: "\$ 455",
      image: "assets/images1/02.jpg",
      ),
      Product(
   title: "Clock M12",
   subtitle: "Add to cart",
    price: "\$ 190",
      image: "assets/images1/03.jpg",
      ),
      Product(
   title: "Tack",
   subtitle: "Add to cart",
     price: "\$ 900",
      image: "assets/images1/04.jpg",
      ),
      Product(
   title: "Blad new",
   subtitle: "Add to cart",
    price: "\$ 755",
      image: "assets/images1/05.jpg",
      ),
      Product(
   title: "SF-100",
   subtitle: "Add to cart",
    price: "\$ 999",
      image: "assets/images1/06.jpg",
      ),
      Product(
   title: "Vegetable",
   subtitle: "Add to cart",
    price: "\$ 750",
      image: "assets/images1/07.png",
      ),
      Product(
   title: "Foods",
   subtitle: "Add to cart",
    price: "\$ 125",
      image: "assets/images1/08.png",
      ),
       Product(
   title: "Vegetable",
   subtitle: "Add to cart",
    price: "\$ 790",
      image: "assets/images1/09.png",
      ),
      Product(
   title: "Biriyani",
   subtitle: "Add to cart",
    price: "\$ 125",
      image: "assets/images1/10.png",
      ),
     
];