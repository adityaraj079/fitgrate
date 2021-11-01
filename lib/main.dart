import 'dart:core';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitegrate_project/provider/google_sign_in.dart';
import 'package:fitegrate_project/screens/Getting_started.dart';
import 'package:fitegrate_project/screens/bottom_navigation.dart';
import 'package:fitegrate_project/screens/dashboard.dart';
import 'package:fitegrate_project/screens/forgotpassword.dart';
import 'package:fitegrate_project/screens/home.dart';
import 'package:fitegrate_project/screens/sign_up.dart';

import 'package:flutter/material.dart';
import 'package:fitegrate_project/screens/sign_in.dart';

import 'package:provider/provider.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)=>ChangeNotifierProvider(
    create:(context) => GoogleSignInProvider(),
    child: MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      

      theme: ThemeData.light(),
      darkTheme:
          ThemeData.dark(), // standard dark theme // device controls theme
    
    initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'SignIn': (context) => SignIn(),
        'SignUp': (context) => SignUp(),
        'Getting_Started': (context) => GetStarted(),
        'Dashboard':(context) => DashBoard(),
        'BottomNavigation':(context) => MyStatefulWidget(),
        'forgotpassword':(context) => forgotpassword(),
      },
      ),
      ); 
    
}




      
