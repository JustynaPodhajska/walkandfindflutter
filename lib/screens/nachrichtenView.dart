import 'package:flutter/material.dart';

class NachrichtenList extends StatefulWidget {
  @override
  _NachrichtenListState createState() => _NachrichtenListState();
}

class _NachrichtenListState extends State<NachrichtenList> {

 bool _gelesen = false;
 String _emailTitel = 'Deine erste Nachricht von BOEM* Verein';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Nachrichten'),
      centerTitle: true,
      leading: BackButton(

      ),
      actions: <Widget>[
        PopupMenuButton
    <String>(
        onSelected: (String result) { },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Neue Nachricht',
          child: Text('Neue Nachricht'),
        ),
        const PopupMenuItem<String>(
          value: 'Kontaktenliste',
          child: Text('Kontaktenliste'),
        ),
        const PopupMenuItem<String>(
          value: 'Spam',
          child: Text('Spam'),
        ),const PopupMenuItem<String>(
          value: 'Mistkübel',
          child: Text('Mistkübel'),
        ),
      ],
    )
      ],
    ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('Öffnen')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
                title: Text('Ungelesen markieren'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delete_forever),
              title: Text('Löschen'),
            ),
          ],
        ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          ListTile(
            leading: (_gelesen == false ? Icon(Icons.mail) : Icon(Icons.mail_outline)),
            onTap: (){
              setState(() {
                _gelesen = !_gelesen;
              });
            },
            title: Text('$_emailTitel'),
            trailing: IconButton(icon: Icon(Icons.delete_forever), onPressed: (){

            },),
          )
        ],
      ),
    );
  }
}
