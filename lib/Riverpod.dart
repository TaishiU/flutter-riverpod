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
