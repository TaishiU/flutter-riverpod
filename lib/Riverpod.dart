import 'package:hooks_riverpod/hooks_riverpod.dart';

final stringStateProvider = StateProvider((ref) => 'Hello world');
final initStateProvider = StateProvider((ref) => 0);
