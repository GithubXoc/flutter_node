import 'package:flutter/material.dart';
import 'login.dart';
import 'forgot_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sales",
      initialRoute: "/",
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 48.0, color: Color(0xffE9E9EC)),
          displayMedium: TextStyle(fontSize: 24.0, color: Color(0xff000000)),
        ),
        
      ),
      routes: {
        "/": (context) => MyHomePage(),
        "/login": (context) => LoginPage(),
        "/forgot_password": (context) => ForgotPassword(),
      },
    );
    // return ChangeNotifierProvider(
    //   create: (context) => MyAppState(),
    //   child: MaterialApp(
    //     title: 'Sales',
    //     initialRoute: '/',
    //     theme: ThemeData(
    //       useMaterial3: true,
    //       colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(79, 170, 163, 100)),
    //     ),

    //     routes: {
    //       "/": (context) => MyHomePage(),
    //       "/login": (context) => LoginPage(),
    //     },
    //   ),
    // );
  }
}

// class MyAppState extends ChangeNotifier {
//   var current = WordPair.random();
// }

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [Text("XAXA")],
      ),
    );
  }
}
