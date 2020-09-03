// void main() {
//   List<ScheduleModel> schedule = [
//     ScheduleModel(name: "TESTING", dates: DateTime.parse("2020-08-22")),
//     ScheduleModel(name: "TESTING", dates: DateTime.parse("2020-08-23")),
//     ScheduleModel(name: "TESTING", dates: DateTime.parse("2020-08-24")),
//     ScheduleModel(name: "TESTING", dates: DateTime.parse("2020-08-25"))
//   ];
//   DateTime dateStart = DateTime.parse("2020-08-22");
//   DateTime dateEnd = DateTime.parse("2020-08-24");
//   var newSchedule = schedule
//       .where((_schedule) =>
//           _schedule.dates.isAfter(dateStart.subtract(Duration(days: 1))) &&
//           _schedule.dates.isBefore(dateEnd.add(Duration(days: 1))))
//       .toList();
//   newSchedule.forEach((value) {
//     print(value.dates.toString());
//   });
// }

// class ScheduleModel {
//   String name;
//   DateTime dates;
//   ScheduleModel({this.name, this.dates});
// }

// void main() {
//   List<EventShow> events = <EventShow>[
//     EventShow(
//         name: 'event 1', date: new DateTime.now().add(new Duration(days: 1))),
//     EventShow(
//         name: 'event 2', date: new DateTime.now().add(new Duration(days: 4))),
//     EventShow(
//         name: 'event 3', date: new DateTime.now().add(new Duration(days: 4))),
//     EventShow(
//         name: 'event 4', date: new DateTime.now().add(new Duration(days: 7))),
//     EventShow(
//         name: 'event 5', date: new DateTime.now().add(new Duration(days: 10)))
//   ];

//   List<EventShow> eventsjadi = [];

//   DateTime startRange = new DateTime.now().add(new Duration(days: 4));
//   DateTime endRange = new DateTime.now().add(new Duration(days: 8));

//   //filter list
//   var filteredEvents = events
//       .where((event) =>
//           event.date.difference(startRange).inDays >= 0 &&
//           event.date.difference(endRange).inDays <= 0)
//       .toList();

//   filteredEvents.forEach((event) {
//     eventsjadi.add(event);
//   });

//   print(eventsjadi[0].name);
// }

// class EventShow {
//   final String name;
//   final DateTime date;

//   EventShow({this.name, this.date});
// }

// void main() {
//   DateTime harini = DateTime.now();
//   DateTime hari1 = DateTime.now().add(Duration(days: 8));

//   var hasil = harini.difference(hari1).inDays;
//   var hasil2 = harini.isAfter(hari1);
//   print(hasil2);
//   print(hasil);
// }
