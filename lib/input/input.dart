import 'package:flutter/material.dart';
import 'package:flutter_demo/landing/landing.dart';
import 'package:flutter_demo/redux/actions.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/student.dart';
import '../redux/store.dart';

class Input extends StatefulWidget {
  static const routeName = '/input';
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  late BuildContext appStateContext;
  late SharedPreferences prefs;
  late Student newStudent;
  String name = '';
  String srn = '';
  String phoneNo = '';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) =>store.state,
      builder: (context, state){
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.05,
                  horizontal: MediaQuery.of(context).size.width * 0.1
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(200.0),
                      child: Image.asset(
                        'assets/images/favicon.png',
                        height: 200.0,
                        width: 200.0,
                      )
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,vertical: 0.0),
                    child: TextField(
                      onChanged: (val){
                        setState(() {
                          name = val;
                        });
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Please enter name',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 3.0,
                              )
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,vertical: 0.0),
                    child: TextField(
                      onChanged: (val){
                        setState(() {
                          srn = val;
                        });
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Please enter srn',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 3.0,
                              )
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,vertical: 0.0),
                    child: TextField(
                      onChanged: (val){
                        setState(() {
                          phoneNo = val;
                        });
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: 'Please enter phone number',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent,
                                width: 3.0,
                              )
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.075,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      newStudent = Student(name: name, srn: srn, phoneNo: phoneNo);
                      StoreProvider.of<AppState>(context).dispatch(AddStudent(newStudent: newStudent));
                      Navigator.pushReplacementNamed(context, Landing.routeName);
                      //Student newStudent = Student(name: name, srn: srn, phoneNo: phoneNo);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Add Student'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}