import 'package:flutter/material.dart';
import 'package:new_project/models/products.dart';

class MyFavourites extends StatelessWidget {
  const MyFavourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(top: 12),
          child: ListView.builder(
            itemCount: productsData.length,
            itemBuilder: (context, index) {
            return Card(
                            child: ListTile(
                              title: Text(productsData[index].title),
                              subtitle: Text(productsData[index].subtitle),
                              leading: CircleAvatar(
                                
                                backgroundImage: AssetImage(productsData[index].image),
                              ),
                              trailing: Text(
                                productsData[index].price,
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