import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SearchScreen'),
      ),
      body: Center(
        child: Text(
          'SearchScreen',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
