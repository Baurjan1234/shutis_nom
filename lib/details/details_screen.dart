import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {Key? key, required this.title, required this.description})
      : super(key: key);
  final String title;
  final String description;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Text(widget.description),
      ),
    );
  }
}
