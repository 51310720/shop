import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rim_application/core/theme/app_colors.dart';
import 'package:rim_application/core/widgets/app_button.dart';
import 'package:rim_application/screen/SignUp%20_Screen.dart';
import 'package:rim_application/screen/create_new_account.dart';
import 'package:rim_application/screen/welcome_back.dart';

class WelcomeScreen extends StatelessWidget{

 @override
  Widget build(BuildContext context) {
     return  Scaffold(
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(///
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 36.5,
           vertical: 24),
           child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           const Text("Welcome!",style: TextStyle(color: Colors.black, 
            fontSize: 24,
            fontWeight: FontWeight.bold)
            ,),
            const SizedBox(height: 20.0,),
             const  Text("sing in or creat a new account",style: TextStyle(color:AppColors.greyColor,fontSize: 18,fontWeight: FontWeight.w300),),
              const SizedBox( height: 93,),
              Image.asset("assets/image/frame.png",width: 320.64,height: 248.93,),
              
              const SizedBox(height: 20.0,),
              AppButton( text:Text("sign in"),  onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WelcomeBack(),
                  ),
                  );
                },),
             
               SizedBox(height: 11.0,),
               AppButton(text:Text.rich(
                  TextSpan(text: "No account yet?",
                  style: 
                  TextStyle(color:AppColors.greyColor),
                  children:[
                    TextSpan(text: "Sing up",style: 
                  TextStyle(color: AppColors.primaryColor),)
                 
                 ]
         
                 )
                 ,
                 
                 ),
                 backgroundColor:AppColors.whiteColor,
                   borderSide:BorderSide(
                      color: AppColors.greyColor,
                      width: 1),
         
         
                   onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>CreateNewAccount ()));//SignupScreen

                   }, ),
         
         
         
        
         
         
         
             
               
         
             
                
                  
         
         
         
         
         
         
         
         
         
         
              
           
                 ],
           
                 ),
         ),
       ),
      

     );
  }

}