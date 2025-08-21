import 'package:flutter/material.dart';
import 'package:pcos_tracker/utils/routes/route_names.dart';
import 'package:pcos_tracker/view/auth_screens/signin_screen.dart';
import 'package:pcos_tracker/view/splash_screen.dart';

import '../../view/auth_screens/login_screen.dart';


class Routes{

  static Route<dynamic>  generateRoute(RouteSettings settings){
    switch (settings.name){

      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (BuildContext context) => SplashScreen());

    case RoutesName.loginScreen:
      return MaterialPageRoute(builder: (BuildContext context) => LoginScreen());

      case RoutesName.signinScreen:
        return MaterialPageRoute(builder: (BuildContext context) => SigninScreen());


      // case RoutesName.signup:
      //   return MaterialPageRoute(builder: (BuildContext context) => SignupScreen());



      default:
        return MaterialPageRoute(builder: (_){

          return Scaffold(
            body: Center(child: Text('No routes defined   '),),
          );

        });
    }
  }
}