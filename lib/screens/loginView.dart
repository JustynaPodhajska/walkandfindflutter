import 'package:flutter/material.dart';
import 'package:walkandfindflutter/screens/anonymUserfeedView.dart';
import 'package:walkandfindflutter/screens/kontaktView.dart';
import 'package:walkandfindflutter/screens/landingpageView.dart';
import 'package:walkandfindflutter/screens/registeredUserView.dart';
import 'package:walkandfindflutter/screens/userSignInView.dart';


class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  String _username = '';
  String _password = '';
  String errorEinloggen = 'Error Text: Einlogen fehlgeschlagen, muss man später mit leerem String initializieren';//'Username oder/und Password sind falsch! Überprüfe die Eingaben noch ein mal';
  String errorUsername = '';
  String errorPassword = '';

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
                child: Container(
                    margin: EdgeInsets.fromLTRB(40, 60, 40, 35),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.all(Radius.circular(20.0),
                        )
                    ),
                    child: ListView(
                        shrinkWrap: true,
                        padding:  const EdgeInsets.all(20.0),
                        children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.all(2),
                            leading: Image(
                              image: AssetImage('assets/wnf_logo_klein.png'),),
                            title: Text('Grüß di! Hast scho a Account? Log dich doch ein!'),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            onChanged: (String username){
                              try{
                                setState(() {
                                  if(username.length >= 3){
                                    errorUsername = '';
                                    _username = username;
                                  }else{
                                    errorUsername = 'von 3 bis 20 Zeichen';
                                  }
                                });
                              }
                              catch(e){
                                errorUsername =  'Ungültige eingabe! Versuche noch einmal';
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'Username',
                              errorText: errorUsername
                            ),),
                          TextFormField(
                            obscureText: true,
                            onChanged: (String password){
                              try{
                                setState(() {
                                  if(password.length >= 8){
                                    errorPassword = '';
                                    _password = password;
                                  }
                                  else{
                                    errorPassword =  'min. 8 Zeichen und 1 Zahl';
                                  }
                                });
                              }
                              catch(e){
                                errorPassword =  'Ungültige eingabe! Versuche noch einmal';
                              }
                            },
                            decoration: InputDecoration(
                                hintText: 'Password',
                              errorText: errorPassword
                            ),),
                          SizedBox(height: 20),
                          RaisedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LandingPageView()));
                            },
                            elevation: 16,
                            disabledColor: Colors.red[900],
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text('Einlogen'),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)
                            ),),
                          SizedBox(height: 20),
                          Container(
                            height: 35,
                            child: Text(errorEinloggen,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.red[900]
                            ),),
                          ),
                          SizedBox(height: 10,),
                          Center(child: FlatButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => AnonymUserfeedView())); //anonym User ohne account view
                            },
                            child: Text('Ohne anmeldung schnuppern'),
                          )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton(
                              onPressed: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => UserSignIn()));
                                },
                                elevation: 16,
                                disabledColor: Colors.red[900],
                                color: Colors.red,
                                textColor: Colors.white,
                                child: Text('Registriere dich'),
                                shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)
                                ),),
                              RaisedButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => KontaktView())); //kontakt View
                                },
                                elevation: 16,
                                disabledColor: Colors.red[900],
                                color: Colors.red,
                                textColor: Colors.white,
                                child: Text('Kontaktiere uns'),
                                shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)
                                ),),
                            ],
                          ),

    ])))));
  }
}
