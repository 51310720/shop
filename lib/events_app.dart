import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rim_application/screen/create_new_account.dart';
import 'package:rim_application/screen/welcome_back.dart';
import 'package:rim_application/screen/welcome_screen.dart';

class EventsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
   
   );

}}