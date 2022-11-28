import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hallazgo PTM'),
      ),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
          strokeWidth: 6,
        ),
      ),
    );
  }
}
