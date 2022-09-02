import 'package:flutter/material.dart';
import 'package:new_project/models/comments_helper.dart';
import 'package:new_project/models/commmets.dart';

class Add_Product extends StatefulWidget {
  @override
  State<Add_Product> createState() => _Add_ProductState();
}

class _Add_ProductState extends State<Add_Product> {
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
        title: Center(child: Text("Details") ),
        leading: Icon(Icons.details_outlined),
        
      ),
      backgroundColor: Colors.grey,
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
            itemCount: comments?.length ?? 0,
            itemBuilder: (_, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  children: [
                                    Text(
                                     "PostId:",
                                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                      comments![index].postId.toString(),
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                              Row(
                                  children: [
                                    Text(
                                     "Id:",
                                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                      comments![index].id.toString(),
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 5, 49, 145),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                              SizedBox(height: 20,),
                               Row(
                                children: [
                                  Text(
                                    comments![index].body,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
        replacement: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
