import 'package:flutter/material.dart';
import 'package:walkandfindflutter/screens/kontaktView.dart';
import 'package:walkandfindflutter/screens/nachrichtenView.dart';
import 'package:walkandfindflutter/screens/neuErstellenAuswahlView.dart';
import 'package:walkandfindflutter/screens/neuSucheAuswahlView.dart';


class AnonymUserfeedView extends StatefulWidget {
  @override
  _AnonymUserfeedViewState createState() => _AnonymUserfeedViewState();

}


class _AnonymUserfeedViewState extends State<AnonymUserfeedView> {

  //  String _name = 'Grzegorz';
  //  String _nachname ='Brzeczyszczykiewicz';
  String _name = 'Anonym User';

  String _equipment = '1 Mikro und 2 Boxen';
  String _event = 'Gewerkschaft';
  String _immo = 'Atelier 20m²';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Benutzer Bereich'),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 6),
            onPressed: (){},
            icon:  Icon(Icons.person_outline,
              size: 50.0,
            ),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              //TODO: items in popupmenu in main programieren
            },
          )
        ],
      ),
      body:
      ListView(
        children: <Widget>[
          Container(
            color: Colors.grey[200],
            child: ListTile(
              title:   Text('Gespeicherte Projekte'),
              contentPadding: EdgeInsets.only(left: 20),
            ),
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('$_equipment'),
            onTap: (){
              return print('equipment gedrückt');
            },
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('$_event'),
            onTap: (){
              return print('event gedrückt');
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('$_immo'),
            onTap: (){
              return print('immo gedrückt');
            },
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              title:   Text('Aktuelles'),
              contentPadding: EdgeInsets.only(left: 20),
            ),
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('$_equipment'),
            onTap: (){
              return print('equipment gedrückt');
            },
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('$_event'),
            onTap: (){
              return print('event gedrückt');
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('$_immo'),
            onTap: (){
              return print('immo gedrückt');
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Location für events 300m²'),
            onTap: (){
              return print('immo gedrückt');
            },
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Mischpult 25 Channels'),
            onTap: (){
              return print('equipment gedrückt');
            },
          ),
        ],
      ),
      drawer: Card(
        elevation: 20,
        borderOnForeground: true,
        margin: EdgeInsets.only(right: 100),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Karte_rot_klein.png'),
                    fit: BoxFit.cover,
                  )
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/wnf_logo_klein.png'),
                  ),
                  SizedBox(width: 12,),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.red[700],
                    child:
                        Text('$_name',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(onPressed: (){},
              padding: EdgeInsets.only(left: 0),
              child: ListTile(
                leading: Icon(Icons.search, size: 40,),
                title: Text('Suche'),
                subtitle: Text('nach Event/Equipment/Raum'),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => neuSucheAuswahlView()));
                },
              ),),
            FlatButton(onPressed: (){},
              padding: EdgeInsets.only(left: 0),
              child: ListTile(
                enabled: false,
                leading: Icon(Icons.add_location, size: 40,),
                title: Text('Neues Projekt erstellen'),
                subtitle: Text('nur für regiestrierten User'),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => neuErstellenView()));
                },
              ),),
            FlatButton(onPressed: (){},
              padding: EdgeInsets.only(left: 0),
              child: ListTile(
                leading: Icon(Icons.save_alt, size: 40,),
                title: Text('Gespeicherte Projekte'),
                subtitle: Text('2 gespeicherte Projekte'),
              ),),
            FlatButton(onPressed: (){},
              padding: EdgeInsets.only(left: 0),
              child: ListTile(
                enabled: false,
                leading: Icon(Icons.email, size: 40,),
                title: Text('Nachrichten'),
                subtitle: Text('nur für regiestrierten User'),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NachrichtenList()));
                },
              ),),
            FlatButton(onPressed: (){},
              padding: EdgeInsets.only(left: 0),
              child: ListTile(
                leading: Icon(Icons.build, size: 40,),
                title: Text('Feed-Filter Einstellungen'),
                subtitle: Text('noch nicht personalisiert'),

              ),),
            FlatButton(onPressed: (){},
              padding: EdgeInsets.only(left: 0),
              child: ListTile(
                enabled: false,
                leading: Icon(Icons.person_pin, size: 40,),
                title: Text('Profil bearbeiten'),
                subtitle: Text('nur für regiestrierten User'),
              ),),
            FlatButton(onPressed: (){
            },
              padding: EdgeInsets.only(left: 0),
              child: ListTile(
                leading: Icon(Icons.info, size: 40,),
                title: Text('Kontakt zu und Info über das Verein'),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KontaktView()));
                },
              ),),

          ],
        ),
      ),
    );
  }
}
