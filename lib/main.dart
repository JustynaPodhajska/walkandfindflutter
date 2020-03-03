import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:walkandfindflutter/screens/EquipmentErstellenView.dart';
import 'package:walkandfindflutter/screens/RaumErstellenView.dart';
import 'package:walkandfindflutter/screens/VeranstaltungErstellenView.dart';
import 'package:walkandfindflutter/screens/loading.dart';
import 'package:walkandfindflutter/screens/loginView.dart';
import 'package:walkandfindflutter/screens/nachrichtenView.dart';
import 'package:walkandfindflutter/screens/neuErstellenAuswahlView.dart';
import 'package:walkandfindflutter/screens/searchEquipmentView.dart';
import 'package:walkandfindflutter/screens/searchRaumView.dart';
import 'package:walkandfindflutter/screens/searchVeranstalltung.dart';
import 'package:walkandfindflutter/screens/splashScreen.dart';
import 'package:walkandfindflutter/screens/userSignInView.dart';
import 'package:walkandfindflutter/screens/registeredUserView.dart';
import 'package:walkandfindflutter/screens/landingpageView.dart';
import 'package:walkandfindflutter/screens/mapView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
       primarySwatch: Colors.red
      ),
      home:
        SplashScreen()
     //   LoginView()

      //  VeranstaltungErstellen()
      //MapView(),
   //  EquipmentErstellen(), //fertig
   //    RaumErstellen(),// fertig
    //  UserSignIn(), //fertig
     //   LandingPageView(), //fertig
    //  RegisteredUserView(),
    //  neuErstellenView(),//fertig
   // SearchVeranstalltungView(), //fertig
     //  SearchRaumView(), //fertig
   //    SearchEquipmentView(), //fetig
   // LoadingSpinner(), //fertig
   //   NachrichtenList()
    );
  }
}