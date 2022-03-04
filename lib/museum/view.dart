import 'package:flutter/material.dart';
import 'package:flutter_localization_master/localization/language_loc.dart';
import 'package:flutter_localization_master/museum/text.dart';
import 'package:flutter_localization_master/museum/video.dart';



import 'audio.dart';

class View extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text( getTranslated(context, 'egyptian_museum'),)
      ),
      body: Center(
        child: Card(
            child: Container(
              color: Colors.grey[300],
              height: 300,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text( getTranslated(context, 'info_such_as'),
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      height: 50.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),

                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> MyVideoPlayerPage()),

                          );
                        },

                        padding: EdgeInsets.all(10.0),
                        color: Color.fromRGBO(0, 160, 227, 1),
                        textColor: Colors.white,
                        child: Text( getTranslated(context, 'video'),
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      height: 50.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),

                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Tex()),

                          );
                        },

                        padding: EdgeInsets.all(5.0),
                        color: Color.fromRGBO(0, 160, 227, 1),
                        textColor: Colors.white,
                        child: Text( getTranslated(context, 'text'),
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      height: 50.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),

                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Audoo()),

                          );
                        },

                        padding: EdgeInsets.all(10.0),
                        color: Color.fromRGBO(0, 160, 227, 1),
                        textColor: Colors.white,
                        child: Text( getTranslated(context, 'audio'),
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),


                  ],
                ),
              ),

            )
        ),
      ),


    );
  }
}
