import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:walkandfindflutter/screens/EquipmentErstellenView.dart';
import 'package:walkandfindflutter/screens/RaumErstellenView.dart';
import 'package:walkandfindflutter/screens/VeranstaltungErstellenView.dart';
import 'package:walkandfindflutter/screens/registeredUserView.dart';
import 'package:walkandfindflutter/shared/RaisedButtonLandingpage.dart';

class neuErstellenView extends StatelessWidget {

  String _name ='Grzegorz';
  String _name1 ='Grzegorzasdasdasdasdas';

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
                  title: Text('Was möchtest du heute mit uns teilen?'),
                ),
                SizedBox(height: 20,),

                RaisedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VeranstaltungErstellen()));
                  },
                  elevation: 16,
                  disabledColor: Colors.red[900],
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Veranstaltung'),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)
                  ),
                ),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EquipmentErstellen()));
                  },
                  elevation: 16,
                  disabledColor: Colors.red[900],
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Equipment'),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)
                  ),
                ),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RaumErstellen()));
                  },
                  elevation: 16,
                  disabledColor: Colors.red[900],
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Räumlichkeit'),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)
                  ),
                ),
                Center(child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text('Abbrechen'),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
