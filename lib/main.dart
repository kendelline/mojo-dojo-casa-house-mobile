import 'package:flutter/material.dart';
import 'package:mojo_dojo_casa_house/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Mojo Dojo Casa House',
        theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
          ).copyWith(
            secondary: const Color.fromARGB(255, 243, 75, 131),
            surface: const Color.fromARGB(255, 255, 243, 247),
          ),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}