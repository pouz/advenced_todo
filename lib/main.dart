import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

const double windowWidth = 400;
const double windowHeight = 800;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('ADVENCED_TODO');
    setWindowMaxSize(const Size(windowWidth, windowHeight));
    setWindowMinSize(const Size(windowWidth, windowHeight));
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
