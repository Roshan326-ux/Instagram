import 'package:flutter/material.dart';
import 'package:instagram_app/Widgets/ui_helper.dart';

import '../signup/signup.dart';

class Loginscreen extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CutomImage(imgurl: "Logo.png"),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: emailcontroller,
              text: 'Email',
              tohide: false,
              textinputtype: TextInputType.emailAddress,
            ),
            SizedBox(height: 15),
            UiHelper.CustomTextField(
              controller: passwordcontroller,
              text: "Password",
              tohide: true,
              textinputtype: TextInputType.emailAddress,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: UiHelper.CustomTextButton(
                    text: "Forgot password?",
                    callback: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            UiHelper.CustomButton(buttonname: "Login", callback: () {}),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CutomImage(imgurl: "fb.png"),
                UiHelper.CustomTextButton(
                  text: "login with facebook",
                  callback: () {},
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "OR",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont have an account?",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                UiHelper.CustomTextButton(text: "Sign Up", callback: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Signup()));
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
