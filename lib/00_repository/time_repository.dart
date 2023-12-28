import 'dart:async';

import 'package:flutter_beginner_class/23_12_28/data_source/time_api.dart';
import 'package:flutter_beginner_class/23_12_28/model/time.dart';

class TimeRepository {
  final _api = TimeApi();

  final _timeStream = StreamController<Time>();

  TimeRepository() {
    Timer.periodic(const Duration(seconds: 2), (timer) async {
      final time = await _api.getTime();
      _timeStream.add(time);
    });
  }

  Future<Time> getTime() => _api.getTime();

  Stream<Time> getTimeStream() => _timeStream.stream;
}