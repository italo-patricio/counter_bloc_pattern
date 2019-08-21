import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:estudo_bloc_pattern/counter_bloc.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Contador bloc_pattern',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Contador bloc_pattern'),
      ),
    );
  }
}
