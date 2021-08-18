import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mockupmymosq/widgets/bottom_navigation_bar.dart';
// import 'package:mockupmymosq/widgets/bottom_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyMosq',
      // ignore: null_check_always_fails
      home: BottomTabNavigator(),
    );
  }
}