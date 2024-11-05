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
              Expanded(
                child: Column(
                  children: [
                    Text("Username"),
                    Theme.of(context).componentPadTop,
                    TextFormField(
                      decoration: InputDecoration(hintText: "Username"),
                    ),
                    Theme.of(context).componentPadTop,
                    Text("Password"),
                    Theme.of(context).componentPadTop,
                    TextFormField(
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    Theme.of(context).componentPadTop,
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: null),
                        Text("Remember me"),
                        ElevatedButton(onPressed: () {}, child: Text("login"))
                      ],
                    ),
                    Theme.of(context).componentPadTop,
                    Row(
                      children: [
                        ElevatedButton(onPressed: () {}, child: Text("G")),
                        SizedBox(width: 30,),
                        ElevatedButton(onPressed: () {}, child: Text("F")),
                      ],
                    ),
                  ],
                ).smallRoundedContainer().largeRoundedContainer(),
              ),
              // Expanded(child: TextFormField(decoration: InputDecoration(hintText: "Username"),)
              // Text("data").baseRoundedContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
