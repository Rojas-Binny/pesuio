import 'package:flutter_demo/models/student.dart';

class AppState{
  List<Student>? students;
  AppState(this.students);

  AppState.copyWith({
    required AppState prev,
    List<Student>? newStudents,
}){
    students= newStudents ?? prev.students; //Replaces anything that is not Null in newStudents in prev.students
  }
  AppState.initial(){
    students = [];
  }
}

