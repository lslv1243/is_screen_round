import 'dart:async';

import 'package:flutter/services.dart';

const MethodChannel _channel = const MethodChannel('is_screen_round');

Future<bool> isScreenRound() async {
  final result = await _channel.invokeMethod<bool>('isScreenRound');
  return result ?? false;
}
