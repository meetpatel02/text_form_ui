import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text_form_ui/routes/routes.dart';

import 'form_1.dart';
import 'home_page.dart';

void main(List<String> args) {
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        "/": (context) => const Form1(name: null,),
        MyRoutes.formRoute: (context) => const Form1(name: null,),
        MyRoutes.homeRoute: (context) => const HomePage(),
      },
    );
  }
}
