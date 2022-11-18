// import 'package:flutter/material.dart';
// import 'package:flutter_demo/Profile/profile.dart';
// import 'package:flutter_demo/landing/landing.dart';
//
// class App extends StatefulWidget {
//   const App({Key? key}) : super(key: key);
//
//   @override
//   State<App> createState() => _AppState();
// }
//
// class _AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         Landing.routeName: (context) => Landing()
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_demo/input/input.dart';
import 'package:flutter_demo/landing/landing.dart';
import 'package:flutter_demo/redux/reducer.dart';
import 'package:flutter_demo/redux/store.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';




class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late BuildContext appStateContext;
  final Store<AppState> _store=Store(reducers, initialState: AppState.initial());


  @override
  Widget build(BuildContext) {
    return StoreProvider(
      store: _store,
        child: StoreConnector<AppState,AppState>(
        converter: (store) => store.state,
        builder: (context, state){
          appStateContext = context;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              Landing.routeName: (context) =>Landing(),
              Input.routeName: (context) =>Input(),
            },
          );
        }
      ),
    );
  }
}