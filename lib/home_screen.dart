import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
     TextTitle (),
        ],
      ),
    );
  }
}

 class TextTitle extends StatelessWidget {
  const TextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
{
}