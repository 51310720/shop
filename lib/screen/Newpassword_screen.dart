import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rim_application/core/theme/app_colors.dart';
import 'package:rim_application/core/widgets/app_button.dart';

class NewpasswordScreen extends StatefulWidget{
  @override
  State<NewpasswordScreen> createState() => _NewpasswordScreenState();
}

class _NewpasswordScreenState extends State<NewpasswordScreen> {
  bool obscureText=false;
  TextEditingController? passwordController;
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  void showPassword(){
    setState(() {
      obscureText=!obscureText;
      
    });print("obscuretext $obscureText");
  }
  @override
  void initState() {
    passwordController=TextEditingController();
   
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: AppBar(
    leading: IconButton(onPressed: () {
      
      Navigator.pop(context);
    },
    icon: Icon(Icons.arrow_back,
    color: Colors.black,
    size: 24,),
    ),
  ),
  body:SingleChildScrollView(
   child:Padding(
    padding: const EdgeInsets.symmetric(horizontal:20),
           
    child:Form(
      key:keyForm,
    
      child: Column(
        children: [
        Text("Set a new password",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
      
        )
        ,
        ),
        SizedBox(height: 25),
        Text("Create a new password."" Ensure it differs from previous ones for security",style:TextStyle(color: AppColors.greyColor,fontSize: 16),
       ),
         SizedBox( height: 20),
         TextFormField(
          decoration:InputDecoration(
          label: Text("Password"),
          hintText: "*********",hintStyle:TextStyle(
            color: AppColors.greyColor,

          )
          ,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.greyColor,
          width: 2)
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
             borderSide: BorderSide(
              color: AppColors.greyColor,
              width: 2,
             ),
             


          ),errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color:Colors.red,width: 2,)
          ),
          prefixIcon: Icon(Icons.lock,color: AppColors.primaryColor,size: 20,
          ),
          suffix: IconButton(onPressed: (){
            showPassword();
          },
          icon: Icon(Icons.visibility,color: AppColors.primaryColor, size: 20,
          ),
          ),


         ),
         obscureText: obscureText,
         controller: passwordController,
          validator: (value) {
                    if(value!.isEmpty){
                      return "Password is required";
                    }
                    return null;
                    
                  },
         

         ),
         SizedBox(height: 30),
         TextFormField(
          decoration:InputDecoration(
          label: Text(" Confirm Password"),
          hintText: "*********",hintStyle:TextStyle(
            color: AppColors.greyColor,

          )
          ,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.greyColor,
          width: 2)
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
             borderSide: BorderSide(
              color: AppColors.greyColor,
              width: 2,
             ),
             


          ),errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color:Colors.red,width: 2,)
          ),
          prefixIcon: Icon(Icons.lock,color: AppColors.primaryColor,size: 20,
          ),
          suffix: IconButton(onPressed: (){
            showPassword();
          },
          icon: Icon(Icons.visibility,color: AppColors.primaryColor, size: 20,
          ),
          ),


         ),
         obscureText: obscureText,
         controller: passwordController,
          validator: (value) {
                    if(value!.isEmpty){
                      return " confirm Password is required";
                    }
                    return null;
                    
                  },
         

         ),








         SizedBox(height: 30),
         AppButton(text: Text("conf"), onPressed:(){
          if(keyForm.currentState!.validate()){
                      print("form valide");
                    }})






      ],
      ),
    ),
  ),



  
  

  ));
  }
}