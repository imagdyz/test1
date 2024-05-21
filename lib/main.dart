import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/Authtentication/Login.dart';
import 'package:test1/Authtentication/register.dart';
import 'package:test1/pages/home.dart';
import 'package:test1/provider/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return Cart();
        }),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '//',
        routes: {
          '/': (context) => const Home(),
          '//': (context) => const Login(),
          '///': (context) => const Register(),
        },
      ),
    );
  }
}
