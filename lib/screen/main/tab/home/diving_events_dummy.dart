import 'package:fast_app_base/screen/main/tab/home/vo/event_type.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_event.dart';

final divingEvent1 = Event.named(
    id: 1,
    eventType: EventType.buddy,
    totalNumbers: 4,
    availableNumbers: 2,
    minimumLevel: 2,
    place: "딥스테이션",
    region: "용인",
    date: DateTime.now(),
    description: "description",
    fee: 50000);
// Event(EventType.buddy, DateTime.now(), "딥스테이션", "용인", "레벨 2", 0);
final divingEvent2 = Event.named(
    eventType: EventType.training,
    totalNumbers: 4,
    availableNumbers: 2,
    minimumLevel: 2,
    place: "딥스테이션",
    region: "용인",
    date: DateTime.now(),
    description: "description",
    fee: 50000,
    id: 2);
final divingEvent3 = Event.named(
    eventType: EventType.training,
    totalNumbers: 4,
    availableNumbers: 2,
    minimumLevel: 2,
    place: "딥스테이션",
    region: "용인",
    date: DateTime.now(),
    description: "description",
    fee: 50000,
    id: 3);
final divingEvent4 = Event.named(
    eventType: EventType.training,
    totalNumbers: 4,
    availableNumbers: 2,
    minimumLevel: 2,
    place: "딥스테이션",
    region: "용인",
    date: DateTime.now(),
    description: "description",
    fee: 50000,
    id: 4);
final divingEvent5 = Event.named(
    eventType: EventType.training,
    totalNumbers: 4,
    availableNumbers: 2,
    minimumLevel: 2,
    place: "딥스테이션",
    region: "용인",
    date: DateTime.now(),
    description: "description",
    fee: 50000,
    id: 5);
final divingEvent6 = Event.named(
    eventType: EventType.training,
    totalNumbers: 4,
    availableNumbers: 2,
    minimumLevel: 2,
    place: "딥스테이션",
    region: "용인",
    date: DateTime.now(),
    description: "description",
    fee: 50000,
    id: 6);

final divingEvents = [
  divingEvent1,
  divingEvent2,
  divingEvent3,
  divingEvent4,
  divingEvent5,
  divingEvent6,
];
