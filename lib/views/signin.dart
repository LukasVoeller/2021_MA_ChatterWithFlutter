import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      appBar: appBarMain(context),
      body: SingleChildScrollView(
        child: Container(
          //padding: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.fromLTRB(24, 200, 24, 0),
          child: Column(
            children: [
              TextField(
                style: simpleTextStyle(),
                decoration: textFieldInputDecoration("E-Mail")
              ),
              TextField(
                style: simpleTextStyle(),
                decoration: textFieldInputDecoration("Passwort")
              ),
              SizedBox(height: 8),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                  child: Text("Passwort vergessen?", style: simpleTextStyle()),
                ),
              ),

              SizedBox(height: 16),

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

              SizedBox(height: 16),

              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Text("Anmelden mit Google", style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                )),
              ),

              SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Keinen Account? ", style: simpleTextStyle()),
                  Text("Jetzt anmelden", style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}