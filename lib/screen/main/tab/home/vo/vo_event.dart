import 'package:fast_app_base/screen/main/tab/home/vo/event_type.dart';

class Event {
  final int id;
  final EventType eventType;
  final int totalNumbers;
  final int availableNumbers;
  final int minimumLevel;
  final String place;
  final String region;
  final DateTime date;
  final String description;
  final int fee;

  Event.named({
    required this.id,
    required this.eventType,
    required this.totalNumbers,
    required this.availableNumbers,
    required this.minimumLevel,
    required this.place,
    required this.region,
    required this.date,
    required this.description,
    required this.fee,
  });
}
