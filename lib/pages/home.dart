import 'package:flutter/material.dart';
import 'package:flutter_localization_master/bloc/mu.dart';
import 'package:flutter_localization_master/classes/langauge.dart';
import 'package:flutter_localization_master/localization/language_loc.dart';
import 'package:flutter_localization_master/main.dart';
import 'package:flutter_localization_master/museum/eg2.dart';
import 'package:flutter_localization_master/museum/on_boarding.dart';
import 'package:flutter_localization_master/router/router.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    MyApp.setLocale(context, _locale);
  }

  void _showSuccessDialog() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          getTranslated(context, 'egyptian_museum'),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              underline: SizedBox(),
              icon: Icon(
                Icons.language,
                color: Colors.white,
              ),
              onChanged: (Language language) {
                _changeLanguage(language);
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        e.flag,
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(e.name)
                    ],
                  ),
                ),
              )
                  .toList(),
            ),
          ),
        ],
      ),

      body:Column(
          children: [
            Expanded(
              child: Image(
                image: AssetImage('assets/images/caption.jpg'),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 30
              ,),

            Container(

              margin: EdgeInsets.all(10),
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),

                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Bottom()),

                  );
                },

                padding: EdgeInsets.all(10.0),
                color: Color.fromRGBO(0, 160, 227, 1),
                textColor: Colors.white,
                child: Text( getTranslated(context, 'hello_to_museum'),
                    style: TextStyle(fontSize: 15)),
              ),
            )
          ]
      ));


  }




}