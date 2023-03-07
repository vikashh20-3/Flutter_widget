import 'package:cs/gridtile.dart';
import 'package:cs/media_queries.dart';
import 'package:cs/statemanagement.dart';
import 'package:cs/textformfiels.dart';
import 'package:flutter/material.dart';
import 'scroll_and_listview.builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        // home: listview_scroll());
        // home: const gridtile());
        // home: const MediaQueries());
        // home: const TextFormFields()
        home: const StateManagement());
  }
}
