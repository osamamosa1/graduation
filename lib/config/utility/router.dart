
import 'package:flutter/material.dart';
import 'package:genkid/config/utility/routes.dart';
import 'package:genkid/screens/course_content.dart';
import 'package:genkid/screens/courses.dart';
import 'package:genkid/screens/home_screen.dart';
import 'package:genkid/screens/loin_screen.dart';
import 'package:genkid/screens/question_screen.dart';
import 'package:genkid/screens/register_screen.dart';
import 'package:genkid/screens/splashScreen.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.registerScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const RegisterScreen(), settings: routeSettings);
    case AppRoutes.homeScreenRoute:
      return MaterialPageRoute(
          builder: (context) => HomeScreen(), settings: routeSettings);

    case AppRoutes.loginScreenRoute:
      return MaterialPageRoute(
          builder: (context) => LoginScreen(), settings: routeSettings);
      case AppRoutes.questionScreenRoute:
      return MaterialPageRoute(
          builder: (context) => QuestionScreen(), settings: routeSettings);
      case AppRoutes.coursesScreenRoute:
      return MaterialPageRoute(
          builder: (context) => Courses(), settings: routeSettings);
      case AppRoutes.courseContentRoute:
      return MaterialPageRoute(
          builder: (context) => CourseContent(), settings: routeSettings);
    case AppRoutes.splashScreenRoute:
    default:
      return MaterialPageRoute(
          builder: (context) =>  SplashScreen(), settings: routeSettings);




  }
}