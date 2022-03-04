import 'package:flutter/material.dart';
import 'package:flutter_localization_master/localization/language_loc.dart';


class Tex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text(getTranslated(context, 'egyptian_museum'))
      ),
      body: Card(
          child: Container(
            color: Colors.grey[300],
            height: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: 400,
                        image: AssetImage('assets/images/mm.jpg'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(getTranslated(context, 'text2')

                    ,
                    style: TextStyle(
                      fontSize: 25,
                    ),

                  ),

                ],
              ),
            ),

          )
      ),


    );
  }
}
