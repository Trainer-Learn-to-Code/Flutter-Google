import 'package:flutter/material.dart';
import 'package:google_signin_integration/screens/profile_page.dart';

import '../authentication/google_signin_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 150),
              SizedBox(height: 50),
              OutlinedButton(
                onPressed: () {

                  signInWithGoogle().then((result) {
                    if (result != null) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Profile_Page();
                          },
                        ),
                      );
                    }
                  });

                },
                child: Padding(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Sign in with Google',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
