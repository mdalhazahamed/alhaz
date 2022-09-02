import 'package:flutter/material.dart';
import 'package:new_project/models/comments_helper.dart';
import 'package:new_project/models/commmets.dart';
import 'package:new_project/pages/add_product.dart';

class Chat extends StatefulWidget {
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Comments>? comments;

  bool isLoaded = false;

  getData() async {
    comments = await CommentsHelper().getComments();

    setState(() {
      isLoaded = true;
    });
  }

  @override
  void initState() {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("API Link-Up")),
        leading: Icon(Icons.api),
      ),
      backgroundColor: Colors.grey,
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
            itemCount: comments?.length ?? 0,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Add_Product(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 23),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                     "Name:",
                                     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                      comments![index].name,
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                     "Email:",
                                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                      comments![index].email,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        replacement: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
