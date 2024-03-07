import 'package:hive/hive.dart';

class ToDodatadatabase {
  List toDoList = [];
  final _myBox = Hive.box('mybox');
  //run this metod if this is the first time ever opening this app
  void createInitialdata() {
    toDoList = [
      ["Go to the GYM", false],
    ];
  }

  // load the datat
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // updateData
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
