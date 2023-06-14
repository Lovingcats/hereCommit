import 'package:flutter/material.dart';
import 'package:kimhyerin/model/feed_model.dart';

class SubjectList extends ChangeNotifier {
  // ChangeNotifier를 extends한다.
  final List<Feedmodel> _feedList = <Feedmodel>[];

  List<Feedmodel> get feedList => _feedList;

  void add(String userName, String userimage, String status, String reposit) {
    feedList.add(Feedmodel(userName, userimage, status, reposit));
    notifyListeners();
  }

  void clearly() {
    feedList.clear();
    notifyListeners();
  }
}
