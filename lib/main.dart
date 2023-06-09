import 'package:booktickets/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(412, 732),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BottomBar(),
          );
        });
  }
}
