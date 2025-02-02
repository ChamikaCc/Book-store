import 'package:flutter/material.dart';
import '../widgets/book_widget.dart'; // Import BookWidget

/// BookList widget
/// Displays a list of books
class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ceylon Bookstore'),
          backgroundColor: Colors.purple,
        ),
        body: SafeArea(
          child: ListView(
            children: const [
              BookWidget(
                imagePath: 'assets/images/Summer Stories.jpg',
                title: 'Summer Stories',
                author: 'Enid Blyton',
                price: '1750',
              ),
              BookWidget(
                imagePath: 'assets/images/pride-and-prejudice.jpg',
                title: 'Pride and Prejudice',
                author: 'Jane Austen',
                price: '2000',
              ),
              BookWidget(
                imagePath: 'assets/images/bridge to terabithia.jpg',
                title: 'Bridge to Terabithia',
                author: 'Katherine Paterson',
                price: '1200',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
