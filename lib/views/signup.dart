import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController userameTextEditingController= new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();
  TextEditingController passwordConfirmTextEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(
        child: Container(
          //padding: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.fromLTRB(24, 200, 24, 0),
          child: Column(
            children: [
              TextField(
                controller: userameTextEditingController,
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("Benutername")
              ),
              SizedBox(height: 16),
              TextField(
                controller: emailTextEditingController,
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("E-Mail")
              ),
              SizedBox(height: 16),
              TextField(
                  controller: passwordTextEditingController,
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("Passwort")
              ),
              SizedBox(height: 16),
              TextField(
                  controller: passwordConfirmTextEditingController,
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("Passwort wiederholen")
              ),

              SizedBox(height: 55),

              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.amberAccent,
                          Colors.amber
                        ]
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Text("Anmelden", style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
