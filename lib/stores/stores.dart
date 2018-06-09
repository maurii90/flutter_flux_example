import 'package:flutter/material.dart';
import 'package:flutter_flux/flutter_flux.dart';

class CounterStore extends Store {
  CounterStore() {
    triggerOnAction(countUp, (int value) {
        print('Store Action countUp');
        _counter = ++_counter;
    });
  }

  int _counter = 0;

  int get counter => _counter;
}

final StoreToken counterStoreToken = new StoreToken(new CounterStore());
final Action<int> countUp = new Action<int>();