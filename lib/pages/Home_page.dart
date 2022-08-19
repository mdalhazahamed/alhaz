
import 'package:flutter/material.dart';
import 'package:new_project/models/adsproduct.dart';
import 'package:new_project/models/adsproduct2.dart';


class HomePage extends StatelessWidget {
  List<String> category = ["Food","Clothes","Electronics","Groceries"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:  SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
               Text(
                    "Hello Alhaz,",
                   style: TextStyle(
                    fontSize:36,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                   ),
                    ),
                 Text(
                  "Let's gets somethings?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                          
                          color: Color.fromARGB(255, 126, 114, 4),
                          borderRadius: BorderRadius.circular(10),
                        ), 
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "60% off During\nCovid-19",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    "assets/images/images08.png",
                                     width: 100,
                                     ),
                                     ),
                            ],
                          ),
                        ),
                        ),
                         SizedBox(width: 15,),
                        Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                          
                          color: Color.fromARGB(255, 38, 169, 5),
                          borderRadius: BorderRadius.circular(10),
                        ), 
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "60% off Foods Offer\nStarDay",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    "assets/images/09.png",
                                     width: 87,
                                     ),
                                     ),
                            ],
                          ),
                        ),
                        ),
                         SizedBox(width: 15,),
                        Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                          
                          color: Color.fromARGB(255, 3, 51, 93),
                          borderRadius: BorderRadius.circular(10),
                        ), 
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "30% off Vegetables\nSunday",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    "assets/images/07.png",
                                     width: 85,
                                     ),
                                     ),
                            ],
                          ),
                        ),
                        ),
                         SizedBox(width: 15,),
                        Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                          
                          color: Color.fromARGB(255, 59, 15, 17),
                          borderRadius: BorderRadius.circular(10),
                        ), 
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "50% off During\nFriday",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    "assets/images/10.png",
                                     width: 65,
                                     ),
                                     ),
                            ],
                          ),
                          
                        ),
                        ),
            
                      ],
                    ),
                  ),
                   SizedBox(height: 20, ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Top Catagories",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                             Padding(
                               padding: const EdgeInsets.only(right: 15),
                               child: Text(
                                "See All",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                            ),
                             ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        SizedBox(height: 45,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: category.length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,vertical: 10
                                    ),
                                    child: Text(category[index]),
                                    ),
                                ),
                              ),
                            );
                          }
                          ),
                        ),
                        SizedBox(height: 30,),
                       Row(
                         children: [
                           for (var i = 0; i < adsproductsData.length; i++) ...[
                           Container(
                            height: 230,
                            width: 180,
                           decoration: BoxDecoration(
                            color: Color.fromARGB(255, 246, 239, 248),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color.fromARGB(255, 236, 236, 236)),
                           ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: -40,
                                  left: 15,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        adsproductsData[i].image,    
                                         width: 145,
                                         height: 160,
                                         
                                        ),
                                        SizedBox(height: 5,),
                                       Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           Text(
                                          adsproductsData[i].title,
                                           style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          ),
                                        SizedBox(height: 10,),
                                        Text(
                                          adsproductsData[i].subtitle,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                          ),
                                        SizedBox(height: 15,),
                                        Text(
                                         adsproductsData[i].price,
                                           style: TextStyle(
                                           color:Color.fromARGB(255, 96, 33, 243),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          ),
                                        ],
                                       ),
                                    ],
                                  ),
                                  
                                  ),
                              ],
                            ),
                           ),
                           SizedBox(width: 15,),
                         ],
                         ],
                       ),
                       SizedBox(height: 30,),
                      
                        Row(
                         children: [
                           for (var i = 0; i < adsproducts1Data.length; i++) ...[
                           Container(
                            height: 230,
                            width: 180,
                           decoration: BoxDecoration(
                            color: Color.fromARGB(255, 246, 239, 248),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color.fromARGB(255, 236, 236, 236)),
                           ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: -40,
                                  left: 15,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        adsproducts1Data[i].image,    
                                         width: 145,
                                         height: 160,
                                         
                                        ),
                                        SizedBox(height: 5,),
                                       Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           Text(
                                          adsproducts1Data[i].title,
                                           style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          ),
                                        SizedBox(height: 10,),
                                        Text(
                                          adsproductsData[i].subtitle,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                          ),
                                        SizedBox(height: 15,),
                                        Text(
                                         adsproducts1Data[i].price,
                                           style: TextStyle(
                                           color:Color.fromARGB(255, 96, 33, 243),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          ),
                                        ],
                                       ),
                                    ],
                                  ),
                                  
                                  ),
                              ],
                            ),
                           ),
                           SizedBox(width: 15,),
                         ],
                         ],
                       ),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}