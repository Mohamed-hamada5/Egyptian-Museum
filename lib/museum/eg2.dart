import 'package:flutter/material.dart';
import 'package:flutter_localization_master/localization/language_loc.dart';
import 'package:flutter_localization_master/museum/view.dart';
import 'package:flutter_localization_master/pages/home.dart';


class Eg2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text( getTranslated(context, 'egyptian_museum'),)
        ),
        body: Card(
            child:Container(
                color: Colors.grey[300],
                height: double.infinity,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          height: 200,
                          image: AssetImage('assets/images/mm.jpg'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      getTranslated(context, 'txt'),
                      style: TextStyle(
                        fontSize: 25,
                      ),

                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 50.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),

                              onPressed: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=> View()),

                                );
                              },

                              padding: EdgeInsets.all(10.0),
                              color: Color.fromRGBO(0, 160, 227, 1),
                              textColor: Colors.white,
                              child: Text( getTranslated(context, 'info'),
                                  style: TextStyle(fontSize: 15)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(

                            margin: EdgeInsets.all(10),
                            height: 50.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),

                              onPressed: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=> HomePage()),

                                );
                              },

                              padding: EdgeInsets.all(10.0),
                              color: Color.fromRGBO(0, 160, 227, 1),
                              textColor: Colors.white,
                              child: Text( getTranslated(context, 'cancel'),
                                  style: TextStyle(fontSize: 15)),
                            ),
                          ),
                        )


                      ],
                    ),
                  ],
                )

            )
        )


    );
  }
}

