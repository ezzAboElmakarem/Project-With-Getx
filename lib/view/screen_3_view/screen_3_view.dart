import 'package:flutter/material.dart';

class Screen3View extends StatelessWidget {
  const Screen3View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text(
            "Screen 3 View \n all the route tree removed",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
