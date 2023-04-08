import 'package:flutter/material.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children:const [
          Text("Welcome Nazrin!"),
        ],
      ),
    );
  }
}