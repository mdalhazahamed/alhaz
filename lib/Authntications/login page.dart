import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:new_project/Authntications/Registration.dart';
import 'package:new_project/BottonNavigatorbar.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //form key
  final _formKey = GlobalKey<FormState>();

  void validate() {
    if (_formKey.currentState!.validate()) {
      print("Validated");
    }
  }

  Future<String?> validatepass() async {
   
    
  }

  //editing controller
  final TextEditingController eamilController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
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
      validator: EmailValidator(errorText: "Not a Valid Email"),
    );

    //password foild

    final passwordField = TextFormField(
      autofocus: true,
      controller: passwordController,
      obscureText: true,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
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
       validator: EmailValidator(errorText: "Forget"),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 96, 33, 243),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomControolar(),
            ),
          );
        },
        child: Text(
          "Login",
          style: GoogleFonts.playfairDisplay(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: "Roboto",
            ),
          ),
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
                      'https://assets1.lottiefiles.com/packages/lf20_ny0yoqfw.json',
                      width: 300,
                      height: 230),
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
                          emailField,
                          SizedBox(
                            height: 20,
                          ),
                          passwordField,
                          SizedBox(
                            height: 40,
                          ),
                          loginButton,
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account? "),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Registration(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "SignUp",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            ],
                          ),
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
