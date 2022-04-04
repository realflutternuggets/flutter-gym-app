import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_out/ui/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gym App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
