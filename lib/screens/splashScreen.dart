import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walkandfindflutter/screens/loginView.dart';

  class SplashScreen extends StatefulWidget {
    @override
    _SplashScreenState createState() => _SplashScreenState();
  }

  class _SplashScreenState extends State<SplashScreen> {

    _SplashScreenState(){
      Future.delayed(const Duration(seconds: 4), (){
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginView()));
          dispose();
        });
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Karte_rot.png'),
                      fit: BoxFit.cover
                  )
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image(
                        image: AssetImage('assets/wnf_logo_klein.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: new BorderRadius.circular(18.0),
                        //  side: BorderSide(color: Colors.red)
                      ),
                      child: Text('BOEM* Kulturverein',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
          )
      );
    }
  }

