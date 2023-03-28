import 'package:flutter/material.dart';
import 'package:flutter_application_stcaked/ui/router.dart';
import 'package:flutter_application_stcaked/ui/views/counter_view.dart';

void main() {
  // setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: initialRoute,
      routes: {
        '/counter': (_) => const CounterView(),
      },
    );
  }
}