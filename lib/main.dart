import 'package:flutter/material.dart';
import 'package:today_app/login_pages/login_page.dart';
import 'package:provider/provider.dart';
import 'package:today_app/models/task_data.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}