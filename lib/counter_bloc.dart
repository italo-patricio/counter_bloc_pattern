import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class CounterBloc extends BlocBase {

   BehaviorSubject<int> _counterController = BehaviorSubject.seeded(0);
   Sink<int> get _inCounter => _counterController.sink;
   Stream<int> get outCounter => _counterController.stream;

   void increment() {
     _inCounter.add(_counterController.value+1);
   }  

   void decrement() {
     _inCounter.add(_counterController.value-1);
   }  

  @override
  void dispose() {
    _counterController.close();
    super.dispose();
  }

}
