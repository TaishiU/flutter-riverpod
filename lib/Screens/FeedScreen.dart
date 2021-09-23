import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_test/Riverpod.dart';
import 'package:riverpod_test/Screens/HomeScreen.dart';
import 'package:riverpod_test/Screens/SearchScreen.dart';

class FeedScreen extends HookWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabPage = useProvider(tabPageProvider);

    return Scaffold(
      backgroundColor: Colors.grey,
      body: [
        HomeScreen(),
        SearchScreen(),
      ].elementAt(tabPage),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (index) {
          context.read(tabPageProvider.notifier).update(index);
        },
        currentIndex: tabPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}
