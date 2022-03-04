import 'package:flutter/material.dart';
import 'package:flutter_localization_master/localization/language_loc.dart';
import 'package:flutter_localization_master/museum/info.dart';
import 'package:flutter_localization_master/museum/near.dart';
import 'package:flutter_localization_master/museum/status.dart';

class Bottom extends StatefulWidget {

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentIndex=0;

  List<Widget> screens=[
    Near(),
    Info(),
    Statue(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          getTranslated(context, 'egyptian_museum'),),
      ),
      body: screens[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.museum_outlined,
              ),
              label: 'Statues'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
              ),
              label: 'Information'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.near_me,
              ),
              label: 'museum'
          ),


        ],
      ),
    );
  }
}
