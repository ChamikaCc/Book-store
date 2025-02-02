import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final String price;

  const BookWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.author,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16), // Add spacing around the widget
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center items horizontally
        children: [
          // Title
          Text(
            title,
            style: const TextStyle(fontSize: 24, color: Colors.purple, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8), // Spacing

          // Author
          Text(
            author,
            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 16), // Spacing

          // Cover Photo
          ClipRRect(
           // borderRadius: BorderRadius.circular(12), // Rounded corners
            child: Image.asset(
              imagePath,
              //width: 200, // Set width
              height: 250, // Set height
              fit: BoxFit.cover, // Keep aspect ratio
            ),
          ),
          const SizedBox(height: 16), // Spacing

          // Row containing Price and Button (both centered)
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center price and button
            children: [
              Text(
                'Rs. $price',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 8), // Reduced spacing between price and button
              ElevatedButton(
                onPressed: () {},
                child: const Text("Add to Cart"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
