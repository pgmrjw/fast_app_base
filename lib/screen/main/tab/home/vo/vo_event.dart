import 'package:fast_app_base/screen/main/tab/home/vo/event_type.dart';

class Event {
  final EventType type;
  final DateTime time;
  final String location;
  final String region;
  final String requirement;
  final int fee;

  Event(
    this.type,
    this.time,
    this.location,
    this.region,
    this.requirement,
    this.fee,
  );
}
