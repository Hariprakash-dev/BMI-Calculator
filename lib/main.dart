import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

// This widget is the root of your application
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => BMIProvider(),
      )
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: BmiCalculator()
      ),
    );
   
  }
}
