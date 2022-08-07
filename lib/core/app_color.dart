import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

var localeSubjectAppColor = BehaviorSubject<int>();

changeAppColor(int choice) {
  localeSubjectAppColor.sink.add(choice);
}

class AppColorData {
  static const backgroundWhite = Color.fromRGBO(239, 237, 237, 1);
  static const textWhite = Color.fromRGBO(175, 174, 174, 1);
  static const backgroundBloc = Color.fromRGBO(239, 238, 238, 1);
  static const textBloc = Color.fromRGBO(239, 238, 238, 1);
}


class AppThemKeys {
  static const LIGHT = 0;
  static const NIGHT = 1;
}

