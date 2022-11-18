// import 'package:flutter/material.dart';
//
// class Profile extends StatefulWidget {
//   static const routeName = '/profile';
//   final String name;
//   final String srn;
//   const Profile({Key? key, required this.name, required this.srn}) : super(key: key);
//
//   @override
//   State<Profile> createState() => _ProfileState();
// }
//
// class _ProfileState extends State<Profile> {
//   String phoneNo = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: SafeArea(
//         child: Center(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'PESU',
//                   style: TextStyle(
//                       fontSize: 36.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blue,
//                       fontFamily: 'Lato'),
//                 ),
//                 Image.asset(
//                   'assets/images/_MG_7737 - Copy.jpg',
//                   height: 200.0,
//                   width: 200.0,
//                 ),
//                 Text(
//                   widget.name,
//                   style: TextStyle(
//                       fontSize: 24.0,
//                       color: Color(0xff3596be),
//                       fontFamily: 'Lato'),
//                 ),
//                 Container(
//                   width: double.infinity,
//                   margin: EdgeInsets.fromLTRB(30.0, 0.0, 20.0, 0.0),
//
//                   child: Text(
//                     widget.srn,
//                     style: TextStyle(
//                         fontSize: 24.0,
//                         color: Color(0xff3596be),
//                         fontFamily: 'Lato'),
//                   ),
//                 ),
//                 Text(
//                   '953874573249030',
//                   style: TextStyle(
//                       fontSize: 24.0,
//                       color: Color(0xff3596be),
//                       fontFamily: 'Lato'),
//                   overflow: TextOverflow.fade,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                         onPressed: () {
//                           print("That is bad");
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.green,
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(20.0),
//                           child: Text('Present'),
//                         )),
//                     ElevatedButton(
//                         onPressed: () {
//                           print("That is great");
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.red,
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(20.0),
//                           child: Text('Absent'),
//                         )),
//                   ],
//                 )
//               ]),
//         ),
//       ),
//     );
//     ;
//   }
// }
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = '/profile';
  final String name;
  final String srn;
  final String phoneNo;
  const Profile({Key? key,required this.name,required this.srn,required this.phoneNo}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String phoneNo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'PESU',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.blue,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/images/PESUIOLogo.jpg',
                height: MediaQuery.of(context).size.width * 0.5,
              ),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                widget.srn,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                widget.phoneNo,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}