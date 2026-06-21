import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: Color(0XFF3797EF)),
      ),
    );
  }

  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinputtype,
  }) {
    return Container(
      height: 50,
      width: 320,
      decoration: BoxDecoration(
        color: Color(0XFF121212),
        border: Border.all(color: Colors.grey.shade700),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          // keyboardType: textinputtype,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(fontSize: 14, color: Colors.white54),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static CutomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static CustomButton({
    required String buttonname,
    required VoidCallback callback,
  }) {
    return SizedBox(
      height: 45,
      width: 320,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFF3797EF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Center(
          child: Text(
            buttonname,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
