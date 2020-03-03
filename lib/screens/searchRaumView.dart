

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class SearchRaumView extends StatefulWidget {
  @override
  _SearchRaumViewState createState() => _SearchRaumViewState();
}

class _SearchRaumViewState extends State<SearchRaumView> {

  bool checkValue = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            ListTile(
              trailing:  RaisedButton(
                onPressed: (){

                },
                elevation: 16,
                disabledColor: Colors.red[900],
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Map'),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)
                ),
              ),
              title: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Welchen Raum bräuchstest du?',
                    contentPadding: EdgeInsets.all(12)
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                DropdownButton(
                  hint: Text('Bezirk'),
                  items: null,
                  onChanged: (Widget newBezirk){
                  /*GridView.count(crossAxisCount: 5,
                  children: <Widget>[
                    CheckboxListTile(
                      value: checkValue,
                      title: Text('1010'),
                      onChanged: (bool value){
                        setState(() {
                          checkValue = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                    value: checkValue,
                    title: Text('1010'),
                    onChanged: (bool value){
                    setState(() {
                    checkValue = value;
                    });
                    },
                    ),
                    CheckboxListTile(
                    value: checkValue,
                    title: Text('1010'),
                    onChanged: (bool value){
                    setState(() {
                    checkValue = value;
                    });
                    },
                    ),
                    CheckboxListTile(
                    value: checkValue,
                    title: Text('1010'),
                    onChanged: (bool value){
                    setState(() {
                    checkValue = value;
                    });
                    },
                    ),
                    CheckboxListTile(
                    value: checkValue,
                    title: Text('1010'),
                    onChanged: (bool value){
                    setState(() {
                    checkValue = value;
                    });
                    },
                    ),
                    CheckboxListTile(
                    value: checkValue,
                    title: Text('1010'),
                    onChanged: (bool value){
                    setState(() {
                    checkValue = value;
                    });
                    },
                    ),
                    CheckboxListTile(
                    value: checkValue,
                    title: Text('1010'),
                    onChanged: (bool value){
                    setState(() {
                    checkValue = value;
                    });
                    },
                    ),
                    CheckboxListTile(
                    value: checkValue,
                    title: Text('1010'),
                    onChanged: (bool value){
                    setState(() {
                    checkValue = value;
                    });
                    },
                    ),
                    CheckboxListTile(
                    value: checkValue,
                    title: Text('1010'),
                    onChanged: (bool value){
                    setState(() {
                    checkValue = value;
                    });
                    },)
                  ],
                  );*/
                  }
                ),
                DropdownButton(
                  hint: Text('Größe'),
                  items: null,
                  onChanged: (String newValue){
                  },
                ),
                DropdownButton(
                  hint: Text('Preis'),
                  items: null,
                  onChanged: (String newValue){
                  },
                ),
                DropdownButton(
                  hint: Text('AZ Asc',),
                  items: null,
                  onChanged: (String newValue){
                  },
                ),
              ],
            ),
            Column(
              children: <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://medicitv-b.imgix.net/movie/zaryadye-concert-hall-grand-opening_d_iDyUWrY.jpg?auto=format&q=85'),
                  ),
                  title: Text('Veranstaltungssaal in 1020'),
                  subtitle: Text('2000€, 300m², vor 3 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://lh3.googleusercontent.com/proxy/jWCVWmLFMSP2xVcg4haOhgw_P4Q9SAvSwx7bQk06hocCSAlRjJUZgBJRqyb-uTJn1dLCkulNyKAjZa5mvkHxZvV6f6gg_3sVsZZ9fdP1QDt_J2sS2DiO9V0ACwZAkwzYxKRZ5Hs1Tt6P-bTBnsg'),
                  ),
                  title: Text('Atelier zu mitteilen! 1140'),
                  subtitle: Text('150€, 50m², vor 13 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://medicitv-b.imgix.net/movie/zaryadye-concert-hall-grand-opening_d_iDyUWrY.jpg?auto=format&q=85'),
                  ),
                  title: Text('Veranstaltungssaal in 1020'),
                  subtitle: Text('2000€, 300m², vor 3 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://lh3.googleusercontent.com/proxy/jWCVWmLFMSP2xVcg4haOhgw_P4Q9SAvSwx7bQk06hocCSAlRjJUZgBJRqyb-uTJn1dLCkulNyKAjZa5mvkHxZvV6f6gg_3sVsZZ9fdP1QDt_J2sS2DiO9V0ACwZAkwzYxKRZ5Hs1Tt6P-bTBnsg'),
                  ),
                  title: Text('Atelier zu mitteilen! 1140'),
                  subtitle: Text('150€, 50m², vor 13 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://medicitv-b.imgix.net/movie/zaryadye-concert-hall-grand-opening_d_iDyUWrY.jpg?auto=format&q=85'),
                  ),
                  title: Text('Veranstaltungssaal in 1020'),
                  subtitle: Text('2000€, 300m², vor 3 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://lh3.googleusercontent.com/proxy/jWCVWmLFMSP2xVcg4haOhgw_P4Q9SAvSwx7bQk06hocCSAlRjJUZgBJRqyb-uTJn1dLCkulNyKAjZa5mvkHxZvV6f6gg_3sVsZZ9fdP1QDt_J2sS2DiO9V0ACwZAkwzYxKRZ5Hs1Tt6P-bTBnsg'),
                  ),
                  title: Text('Atelier zu mitteilen! 1140'),
                  subtitle: Text('150€, 50m², vor 13 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://medicitv-b.imgix.net/movie/zaryadye-concert-hall-grand-opening_d_iDyUWrY.jpg?auto=format&q=85'),
                  ),
                  title: Text('Veranstaltungssaal in 1020'),
                  subtitle: Text('2000€, 300m², vor 3 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://lh3.googleusercontent.com/proxy/jWCVWmLFMSP2xVcg4haOhgw_P4Q9SAvSwx7bQk06hocCSAlRjJUZgBJRqyb-uTJn1dLCkulNyKAjZa5mvkHxZvV6f6gg_3sVsZZ9fdP1QDt_J2sS2DiO9V0ACwZAkwzYxKRZ5Hs1Tt6P-bTBnsg'),
                  ),
                  title: Text('Atelier zu mitteilen! 1140'),
                  subtitle: Text('150€, 50m², vor 13 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://medicitv-b.imgix.net/movie/zaryadye-concert-hall-grand-opening_d_iDyUWrY.jpg?auto=format&q=85'),
                  ),
                  title: Text('Veranstaltungssaal in 1020'),
                  subtitle: Text('2000€, 300m², vor 3 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://lh3.googleusercontent.com/proxy/jWCVWmLFMSP2xVcg4haOhgw_P4Q9SAvSwx7bQk06hocCSAlRjJUZgBJRqyb-uTJn1dLCkulNyKAjZa5mvkHxZvV6f6gg_3sVsZZ9fdP1QDt_J2sS2DiO9V0ACwZAkwzYxKRZ5Hs1Tt6P-bTBnsg'),
                  ),
                  title: Text('Atelier zu mitteilen! 1140'),
                  subtitle: Text('150€, 50m², vor 13 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://medicitv-b.imgix.net/movie/zaryadye-concert-hall-grand-opening_d_iDyUWrY.jpg?auto=format&q=85'),
                  ),
                  title: Text('Veranstaltungssaal in 1020'),
                  subtitle: Text('2000€, 300m², vor 3 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://lh3.googleusercontent.com/proxy/jWCVWmLFMSP2xVcg4haOhgw_P4Q9SAvSwx7bQk06hocCSAlRjJUZgBJRqyb-uTJn1dLCkulNyKAjZa5mvkHxZvV6f6gg_3sVsZZ9fdP1QDt_J2sS2DiO9V0ACwZAkwzYxKRZ5Hs1Tt6P-bTBnsg'),
                  ),
                  title: Text('Atelier zu mitteilen! 1140'),
                  subtitle: Text('150€, 50m², vor 13 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://medicitv-b.imgix.net/movie/zaryadye-concert-hall-grand-opening_d_iDyUWrY.jpg?auto=format&q=85'),
                  ),
                  title: Text('Veranstaltungssaal in 1020'),
                  subtitle: Text('2000€, 300m², vor 3 Tagen'),
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  trailing: Image(
                    image: NetworkImage('https://lh3.googleusercontent.com/proxy/jWCVWmLFMSP2xVcg4haOhgw_P4Q9SAvSwx7bQk06hocCSAlRjJUZgBJRqyb-uTJn1dLCkulNyKAjZa5mvkHxZvV6f6gg_3sVsZZ9fdP1QDt_J2sS2DiO9V0ACwZAkwzYxKRZ5Hs1Tt6P-bTBnsg'),
                  ),
                  title: Text('Atelier zu mitteilen! 1140'),
                  subtitle: Text('150€, 50m², vor 13 Tagen'),
                ),
              ],
            ),
          ],
        ),

      )
    );
  }
}
