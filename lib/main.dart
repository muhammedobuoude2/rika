// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rika_store/utils/shared/shared_preferences.dart';

import 'feature/view/splash_screen/splash_one_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  SharedPref.instance.initPrefs();
  runApp(GetMaterialApp(
    home: SplashOneScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        fontFamily: 'Mont',
        sliderTheme: SliderThemeData(),
        tabBarTheme: TabBarTheme(),
        navigationBarTheme: NavigationBarThemeData()
        // inputDecorationTheme:
        ),
  ));
// AppBar(
//   systemOverlayStyle: SystemUiOverlayStyle(
//     // Status bar color
//     statusBarColor: Colors.red,

//     // Status bar brightness (optional)
//     statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
//     statusBarBrightness: Brightness.light, // For iOS (dark icons)
//   ),
// )
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

// main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Map<String, dynamic>? _userData;
//   AccessToken? _accessToken;
//   bool _checking = true;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _checkIfisLoggedIn();
//   }

//   _checkIfisLoggedIn() async {
//     final accessToken = await FacebookAuth.instance.accessToken;

//     setState(() {
//       _checking = false;
//     });

//     if (accessToken != null) {
//       print(accessToken.toJson());
//       final userData = await FacebookAuth.instance.getUserData();
//       _accessToken = accessToken;
//       setState(() {
//         _userData = userData;
//       });
//     } else {
//       _login();
//     }
//   }

//   () async {
//     final LoginResult result = await FacebookAuth.instance.login();

//     if (result.status == LoginStatus.success) {
//       _accessToken = result.accessToken;

//       final userData = await FacebookAuth.instance.getUserData();
//       _userData = userData;
//     } else {
//       print(res_loginult.status);
//       print(result.message);
//     }
//     setState(() {
//       _checking = false;
//     });
//   }

//   _logout() async {
//     await FacebookAuth.instance.logOut();
//     _accessToken = null;
//     _userData = null;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     print(_userData);
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Facebook Auth Project')),
//         body: _checking
//             ? Center(
//                 child: CircularProgressIndicator(),
//               )
//             : Center(
//                 child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   _userData != null
//                       ? Text('name: ${_userData!['name']}')
//                       : Container(),
//                   _userData != null
//                       ? Text('email: ${_userData!['email']}')
//                       : Container(),
//                   _userData != null
//                       ? Container(
//                           child: Image.network(
//                               _userData!['picture']['data']['url']),
//                         )
//                       : Container(),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   CupertinoButton(
//                       color: Colors.blue,
//                       child: Text(
//                         _userData != null ? 'LOGOUT' : 'LOGIN',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onPressed: _userData != null ? _logout : _login)
//                 ],
//               )),
//       ),
//     );
//   }
// }
