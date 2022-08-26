import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:new_project/Authntications/login%20page.dart';

class Registration extends StatefulWidget {
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController firstNameController = new TextEditingController();
  final TextEditingController secondNameController =
      new TextEditingController();
  final TextEditingController eamilController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confimpasswordController =
      new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final fisrtNameField = TextFormField(
      autofocus: false,
      controller: firstNameController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        firstNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person_outlined,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Fisrt Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNameController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        eamilController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person_outlined,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Nick Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: eamilController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        eamilController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email_outlined,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Number or Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //password foild

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
         suffixIcon: IconButton
        (onPressed: () {
          
        }, 
        icon: Icon(Icons.remove_red_eye),
        ),
        prefixIcon: Icon(
          Icons.vpn_key,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final confimpasswordField = TextFormField(
      autofocus: false,
      controller: confimpasswordController,
      obscureText: true,
      onSaved: (value) {
        confimpasswordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
         suffixIcon: IconButton
        (onPressed: () {
          
        }, 
        icon: Icon(Icons.remove_red_eye),
        ),
        prefixIcon: Icon(
          Icons.vpn_key,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confim Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: Lottie.network(
                    'https://assets3.lottiefiles.com/private_files/lf30_t58qlnnx.json',
                    width: 300,
                    height: 120,
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              SingleChildScrollView(
                child: Container(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(34.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          fisrtNameField,
                          SizedBox(
                            height: 20,
                          ),
                          secondNameField,
                          SizedBox(
                            height: 20,
                          ),
                          emailField,
                          SizedBox(
                            height: 20,
                          ),
                          passwordField,
                          SizedBox(
                            height: 20,
                          ),
                          confimpasswordField,
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 100,
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: GoogleFonts.playfairDisplay(
                                        textStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
