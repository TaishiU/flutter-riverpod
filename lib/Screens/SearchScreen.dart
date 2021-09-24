import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../Riverpod.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stringState = useProvider(stringStateProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SearchScreen'),
      ),
      body: Center(
        child: Text(
          stringState.state,
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          stringState.state = 'SearchScreen';
        },
      ),
    );
  }
}
