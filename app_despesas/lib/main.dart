// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace, unused_field, avoid_print
import 'package:flutter/material.dart';
import 'components/myHomePage.dart';
// import 'package:intl/intl.dart';

void main() {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
              .copyWith(secondary: Colors.amber),
          fontFamily: 'Quicksand',
          textTheme: ThemeData.light().textTheme.copyWith(
                  titleLarge: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
          appBarTheme: AppBarTheme(
              titleTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(
                      headline6: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
                  .headline6)),
    );
  }
}
