import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class DateTimeAdapter extends TypeAdapter<DateTime> {
  @override
  final typeId = 102;

  @override
  void write(BinaryWriter writer, DateTime obj) {
    writer.write(obj.millisecondsSinceEpoch);
  }

  @override
  DateTime read(BinaryReader reader) {
    final millis = reader.read() as int;
    return DateTime.fromMillisecondsSinceEpoch(millis);
  }
}