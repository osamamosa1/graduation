import 'package:flutter/material.dart';
import 'package:genkid/config/utility/routes.dart';
import 'package:sizer/sizer.dart';
import 'package:genkid/provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'config/utility/router.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider<Data>(
      create: (BuildContext context)=>Data(),
      child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Sizer(
      builder: (context, orientation, deviceType){
        return      const  MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerate,

          initialRoute: AppRoutes.splashScreenRoute,
        );

      },
    );
  }
}

