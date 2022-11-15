import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String name;
  const DetailsScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.name),
      ),
    );
  }
}
