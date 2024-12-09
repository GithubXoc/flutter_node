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
              Bigtitle("Login"),
              Theme.of(context).componentPadTop,
              Expanded(
                child: Column(
                  children: [
                    LoginField("Username"),
                    LoginField("Password"),
                    LoginButton(),
                    LoginMethods(),
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

class LoginMethods extends StatelessWidget {
  const LoginMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: () {}, child: Text("G")),
        SizedBox(
          width: 30,
        ),
        ElevatedButton(onPressed: () {}, child: Text("F")),
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  final String remember = "Remember me";
  final String login = "Login";
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: null),
        Text(remember),
        ElevatedButton(onPressed: () {}, child: Text(login)),
        Theme.of(context).componentPadTop,
      ],
    );
  }
}

class Bigtitle extends StatelessWidget {
  final String bigTitle;
  const Bigtitle(
    this.bigTitle, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          bigTitle,
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ],
    );
  }
}

class LoginField extends StatelessWidget {
  final String fieldName;
  const LoginField(this.fieldName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(fieldName),
        Theme.of(context).componentPadTop,
        TextFormField(
          decoration: InputDecoration(hintText: fieldName),
        ),
        Theme.of(context).componentPadTop
      ],
    );
  }
}
