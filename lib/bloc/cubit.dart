//
//
// import 'package:bloc/bloc.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_localization_master/bloc/states.dart';
// import 'package:flutter_localization_master/museum/info.dart';
// import 'package:flutter_localization_master/museum/near.dart';
// import 'package:flutter_localization_master/museum/status.dart';
//
// class NewsCubit extends Cubit<NewsStates>{
//
//   NewsCubit():super(NewsInitialStates());
//   static NewsCubit get(context)=> BlocProvider.of(context);
//
//   int currentIndex=0;
//   List<BottomNavigationBarItem> bottomItems=[
//     BottomNavigationBarItem(
//         icon: Icon(
//           Icons.business,
//         ),
//         label: 'Business'
//     ),
//     BottomNavigationBarItem(
//         icon: Icon(
//           Icons.sports,
//         ),
//         label: 'Sports'
//     ),
//     BottomNavigationBarItem(
//         icon: Icon(
//           Icons.science,
//         ),
//         label: 'Science'
//     ),
//
//   ];
//   void changeBottomNavBar(int index){
//     currentIndex=index;
//     if(index==1)
//       getSports();
//     if(index==2)
//       getScience();
//     emit(NewsBottomNavStates());
//   }
//   List<Widget> screen=[
//     BusinessScreen(),
//     SportsScreen(),
//     ScienceScreen(),
//   ];
//
//   List<dynamic> business=[];
//
//   void getBusiness(){
//     emit(NewsGetBusinessLoadingStates());
//
//   }
//
//   List<dynamic> sports=[];
//
//   void getSports(){
//     emit(NewsGetSportsSuccessStates());
//
//
//
//   }
//
//   List<dynamic> science=[];
//
//   void getScience(){
//     emit(NewsGetScienceSuccessStates());
//
//
//
//   }
//
//   List<dynamic> search=[];
//
// }