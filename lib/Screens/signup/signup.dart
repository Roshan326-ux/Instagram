import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/Widgets/ui_helper.dart';

import '../login/loginscreen.dart';

class Signup extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CutomImage(imgurl: "Logo.png"),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: emailcontroller,
              text: "Email",
              tohide: false,
              textinputtype: TextInputType.emailAddress,
            ),
            SizedBox(height: 15),
            UiHelper.CustomTextField(
              controller: passwordcontroller,
              text: "Password",
              tohide: true,
              textinputtype: TextInputType.text,
            ),
            SizedBox(height: 15),
            UiHelper.CustomTextField(
              controller: usernamecontroller,
              text: "Username",
              tohide: false,
              textinputtype: TextInputType.text,
            ),
            SizedBox(height: 30),
            UiHelper.CustomButton(buttonname: "Sign Up", callback: () {}),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                UiHelper.CustomTextButton(
                  text: "Sign In ",
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Loginscreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
