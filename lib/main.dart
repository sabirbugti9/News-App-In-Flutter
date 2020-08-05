import 'package:flutter/material.dart';
import 'package:my_messenger/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        primaryColor: Color(0xff36c9c5),
      ),
      home: HomePage(),
      // home: StreamBuilder(
      //     stream: FirebaseAuth.instance.onAuthStateChanged,
      //     builder: (ctx, snapShot) {
      //       if (snapShot.hasData) {
      //         return HomePage();
      //       }
      //       return SignUp();
      //     }),
    );
  }
}
