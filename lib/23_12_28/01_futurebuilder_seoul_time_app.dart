// import 'package:flutter/material.dart';
// import 'package:flutter_beginner_class/23_12_28/data_source/time_api.dart';
// import 'package:flutter_beginner_class/23_12_28/model/time.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const BusanTimeApp(),
//     );
//   }
// }
//
// class BusanTimeApp extends StatelessWidget {
//   const BusanTimeApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FutrueBuilder 방식'
//         ),
//       ),
//         body: FutureBuilder<Time>(
//           future: TimeApi().getTime(),
//           builder: (context, snapshot) {
//             if(snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child:  CircularProgressIndicator(),
//               );
//             }
//
//           },
//         ),
//
//     );
//   }
// }
