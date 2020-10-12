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

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//     coba();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }

//   coba() {
//     List<EventShow> events = <EventShow>[
//       EventShow(
//           name: 'event 1', date: new DateTime.now().add(new Duration(days: 1))),
//       EventShow(
//           name: 'event 1', date: new DateTime.now().add(new Duration(days: 4))),
//       EventShow(
//           name: 'event 1', date: new DateTime.now().add(new Duration(days: 4))),
//       EventShow(
//           name: 'event 4', date: new DateTime.now().add(new Duration(days: 7))),
//       EventShow(
//           name: 'event 5', date: new DateTime.now().add(new Duration(days: 10)))
//     ];

//     List<EventShow> eventsjadi = [];

//     DateTime startRange = new DateTime.now().add(new Duration(days: 4));
//     DateTime endRange = new DateTime.now().add(new Duration(days: 8));

//     print(events[0].name);

//     //filter list
//     var filteredEvents = events
//         .where((event) =>
//             event.date.difference(startRange).inDays >= 0 &&
//             event.date.difference(endRange).inDays <= 0)
//         .toList();

//     List<EventShow> hasil =
//         events.where((element) => element.name == "event 1");

//     hasil.sort((a, b) => a.date.compareTo(b.date));

//     // setState(() {
//     //   hasil.name = 'event 2';
//     //   hasil.date = DateTime.now();
//     // });

//     // print(events[1].date.difference(startRange).inDays);

//     filteredEvents.forEach((event) {
//       eventsjadi.add(event);
//       print(event.name);
//     });

//     print(events[0].date);
//     print(hasil);
//   }
// }

// class EventShow {
//   String name;
//   DateTime date;

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

// intl ampm

// void intlampm() {
//   final startTime = DateTime(
//       DateTime.now().year, DateTime.now().month, DateTime.now().day, 8);
//   final endTime = DateTime(
//       DateTime.now().year, DateTime.now().month, DateTime.now().day, 17, 30);

//   final currentTime = DateTime.now();
//   print(DateTime.now());

//   if (currentTime.isAfter(startTime) && currentTime.isBefore(endTime)) {
//     // do something
//     var waktusekarang = DateTime.now();
//     var convert = DateFormat.jm().format(waktusekarang);
//     var jambukaconvertampm = DateFormat.jm().format(startTime);
//     var jamtutup = DateFormat.jm().format(endTime);
//     print(startTime);
//     print("tutup jam ${jamtutup}");
//     print(jambukaconvertampm);
//     print(convert);
//   }
// }
