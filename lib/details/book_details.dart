import 'package:flutter/material.dart';

class BookDetailScreen extends StatefulWidget {
  const BookDetailScreen(
      {Key? key,
      required this.title,
      this.zohiogch = "Galaa",
      this.huudas = "123"})
      : super(key: key);
  final String title;
  final String zohiogch;
  final String huudas;

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Center(
                child: Container(
                  height: 230,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/book.jpg"),
                    ),
                  ),
                ),
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.zohiogch.toUpperCase(),
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => index == 4
                      ? const Icon(
                          Icons.star_half,
                          color: Colors.red,
                          size: 15,
                        )
                      : const Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 15,
                        ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Товч танилцуулга",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        width: MediaQuery.of(context).size.width,
        height: 45,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Web Хувилбар унших',
            style: TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // <-- Radius
            ),
          ),
        ),
      ),
    );
  }
}
