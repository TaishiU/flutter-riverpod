import 'package:hooks_riverpod/hooks_riverpod.dart';

final stringStateProvider = StateProvider((ref) => 'Hello world');

class Counter extends StateNotifier<int> {
  Counter() : super(0);
  void increment() {
    this.state++;
  }

  void decrement() {
    this.state--;
  }
}

final counterProvider = StateNotifierProvider<Counter, int>((ref) => Counter());

class TabPage extends StateNotifier<int> {
  TabPage(int index) : super(index);
  void update(int index) => state = index;
}

final tabPageProvider =
    StateNotifierProvider<TabPage, int>((ref) => TabPage(0));
