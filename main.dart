import 'package:flutter/material.dart';
import 'rtsp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RTSP Stream Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RtspPage(), // Màn hình chính là RtspPage
    );
  }
}
