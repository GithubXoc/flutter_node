import 'package:flutter/material.dart';
import 'package:myapp/style/style_parts.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Row(
        children: [
          Text("Forgot Password")
        ],
      )),
    );
  }
}