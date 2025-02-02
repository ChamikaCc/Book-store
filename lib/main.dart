import 'package:flutter/material.dart';
import 'screens/book_list.dart'; // Import BookList screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceylon Bookstore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BookList(), // Set BookList as the home screen
    );
  }
}
