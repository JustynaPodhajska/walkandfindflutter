import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class EquipmentErstellen extends StatefulWidget {
  @override
  _EquipmentErstellenState createState() => _EquipmentErstellenState();
}

class _EquipmentErstellenState extends State<EquipmentErstellen> {
  var _dateFrom;
  //String _dateFrom = '';
  var _dateTo;
  String _anzahl = '';
  String _preis = '';
  String _beschreibung = '';
  String _artderanzeige = 'Worum handelt es sich?';

  List<String> arten = <String>[
    'Verkauf', 'Ausleih'
  ];

  List<DropdownMenuItem<String>> dropdownList;

  List<DropdownMenuItem<String>> getRaumArtenDropdown(){
    List<DropdownMenuItem<String>> items = new List();
    for(String item in arten){
      items.add(new DropdownMenuItem(value: item,
          child: Text(item)));
    }
    return items;
  }

  void callDatePickerFrom() async {
    var order = await getDate();
    setState(() {
      _dateFrom = order;
    });
  }
  void callDatePickerTo() async {
    var order = await getDate();
    setState(() {
      _dateTo = order;
    });
  }

  Future<DateTime> getDate() {
    // Imagine that this function is
    // more complex and slow.
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark(),
          child: child,
        );
      },
    );
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
                  title: Text('Dein neues Equipment'),
                ),
                SizedBox(height: 20),
                Text('Anzahl'),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: '1-99999'
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: DropdownButton<String>(
                    value: _artderanzeige,
                    onChanged: (String newValue) {
                      setState(() {
                        _artderanzeige = newValue;
                      });
                    },
                    hint: Text('$_artderanzeige'),
                    items: null,
                    //   getRaumArtenDropdown()
                    /* raumarten
                      .map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  })
                      .toList()*/
                  ),
                ),
                SizedBox(height: 20),
                Text('Preis'),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: '0-99999€'
                  ),
                ),
                SizedBox(height: 20),
                Text('Adresse'),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Rathaus 1-2/2/2, 1010 Wien'
                  ),),
                SizedBox(height: 20),
                Text('Beschreibung'),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Kurze Beschreibung'
                  ),),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: (){
                            callDatePickerFrom();
                          },
                          child: Text('Verfügbar ab'),
                          elevation: 16,
                          disabledColor: Colors.red[900],
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(child: Text(_dateFrom == null ? 'Ab (Pflichtfeld)' : 'Ab ' + DateFormat('d.MM.y').format(_dateFrom) + ' ')),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: (){
                            callDatePickerTo();
                          },
                          child: Text('Verfügbar bis'),
                          elevation: 16,
                          disabledColor: Colors.red[900],
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(child: Text(_dateTo == null ? 'Bis' : 'Bis ' + DateFormat('d.MM.y').format(_dateTo) + ' ')),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: (){

                      },
                      elevation: 16,
                      disabledColor: Colors.red[900],
                      color: Colors.red,
                      textColor: Colors.white,
                      child: Text('Veröffentlichen'),
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
