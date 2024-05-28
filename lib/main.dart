import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'change_notifier.dart';
import 'parent.dart';
void main()=>runApp(const MyApp());
// Provider widget (wraps the entire app)
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterState>(
      create: (context) => CounterState(),
      child: MaterialApp( 
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const ParentWidget(), // Parent widget
      ),
    );
  }
}
