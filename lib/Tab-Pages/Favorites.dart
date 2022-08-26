import 'package:flutter/material.dart';
import 'package:new_project/models/gridproductData.dart';


class MyFavourites extends StatelessWidget {
  const MyFavourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(top: 12),
          child: ListView.builder(
            itemCount: gridadsproductsData .length,
            itemBuilder: (context, index) {
            return Card(
                            child: ListTile(
                              title: Text(gridadsproductsData [index].title),
                              subtitle: Text(gridadsproductsData [index].subtitle),
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                
                                backgroundImage: AssetImage(gridadsproductsData [index].image),
                              ),
                              trailing: Text(
                                gridadsproductsData [index].price,
                                style: TextStyle(
                                  color:Color.fromARGB(255, 96, 33, 243),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                            ),
                          );
          },
          ),
        );
  }
}