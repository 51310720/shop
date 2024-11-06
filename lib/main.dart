
// ignore_for_file: prefer_const_constructors

import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rim_application/events_app.dart';
import 'package:rim_application/screen/welcome_screen.dart';

var afficheText= const Text("hello",style: TextStyle(fontSize: 20.0,color:Colors.blue),);
var affichicon= const Icon(Icons.email,color: Colors.amber,size: 50,);
void main() {
  runApp(EventsApp());
    
}