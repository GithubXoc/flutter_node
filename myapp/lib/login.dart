import 'package:flutter/material.dart';
import 'package:myapp/style/style_parts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              1.0,
            ],
            colors: [
              Color(0xff204441),
              Color(0xff4FAAA3),
            ],
          )),
          child: Column(
            children: <Widget>[
              Theme.of(context).pageTitle,
              Row(
                children: [
                  Text(
                    "Login",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.displayLarge,
                  )
                ],
              ),
              Theme.of(context).componentPadTop,
              Expanded(child: Text("data").smallRoundedContainer().largeRoundedContainer(),),
              // Text("data").baseRoundedContainer(),

            ],
          ),
        ),
      ),
    );
  }
}