import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
