import 'package:flutter/material.dart';
import 'package:walkandfindflutter/screens/loginView.dart';

class UserSignIn extends StatefulWidget {
  @override
  _UserSignInState createState() => _UserSignInState();
}

class _UserSignInState extends State<UserSignIn> {

  bool _mitglied = false;

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      width: 50,
                      image: AssetImage('assets/wnf_logo_klein.png'),),
                    SizedBox(width: 20,),
                    Text('Anmeldungsformular')
                  ],
                ),
                SizedBox(height: 20),
                Text('Vorname'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Gib bitte deinen Vornamen ein!'
                  ),
                ),
            SizedBox(height: 20),
            Text('Nachname'),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Gib bitte deinen Nachnamen ein!'
              ),),
                SizedBox(height: 20),
                Text('Username'),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'von 3 bis 20 Zeichen (Pflichtfeld)'
                  ),
                ),
                SizedBox(height: 20),
                Text('Password'),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'min. 8 Zeichen und 1 Zahl (Pflichtfeld)'
                  ),),
                SizedBox(height: 20),
                Text('Password Bestätigung'),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Gib dein Password nochmal ein!'
                  ),),
                SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                value: _mitglied,
                onChanged:(bool value){
                  setState(() {
                    _mitglied = value;
                  });
                }
                ),
                Text('Bist du ein Vereinsmitglied?')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                      Navigator.push(context,  MaterialPageRoute(builder: (context) => LoginView()));
                      dispose();
                  },
                  elevation: 16,
                  disabledColor: Colors.red[900],
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Anmelden'),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)
                  ),),
                RaisedButton(
                  onPressed: (){
                      Navigator.pop(context);
                  },
                  elevation: 16,
                  disabledColor: Colors.red[900],
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Abbrechen'),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)
                  ),),
              ],
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
