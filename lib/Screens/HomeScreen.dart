import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../Riverpod.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = useProvider(counterProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HomeScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: () {
                    context.read(counterProvider.notifier).decrement();
                  },
                ),
                SizedBox(width: 30),
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    context.read(counterProvider.notifier).increment();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
