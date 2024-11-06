import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:rim_application/core/theme/app_colors.dart';
import 'package:rim_application/core/widgets/app_button.dart';
import 'package:rim_application/screen/Email_screen.dart';


class SignupScreen extends StatefulWidget{
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController?emailController;
   GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  @override
  void initState() {
   emailController=TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar:AppBar(
    leading: IconButton(onPressed:(){
      Navigator.pop(context);
    },
     icon: Icon(Icons.arrow_back,
     color: Colors.black,
     size: 24,)),

   ) ,
   body:SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal:24),
       child: Form(
        key:keyForm,
         
          child:  Column(children: [
            Text("Forgot password",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),),
            SizedBox(height:25),
            Text.rich(
              TextSpan(
                text: "Please enter your email to reset the password",
                style: TextStyle(
                  color:AppColors.greyColor ,
                  fontSize: 16))),
                  SizedBox(height:34),
                  TextFormField(decoration:const InputDecoration(
                    label: Text("Your Email"),
                    hintText: "contact@dscodetech.com",
                    hintStyle: TextStyle(color: AppColors.greyColor),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:BorderSide(
                        color: AppColors.greyColor,
                        width: 2,
                      ),
                      
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: AppColors.greyColor,
                          width: 2,
                        ),
                        
                        
                        ),
                        
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: AppColors.redColor,
                          width: 2,)
                        ),
                        prefixIcon: Icon(Icons.lock,
                        color: AppColors.primaryColor,size: 20,),
                      
                
                
                  ),
                  obscureText: false,
                  controller: emailController,
                  validator: (String?value) {
                    if (value!.isEmpty){
                      return "email is required";
                    }
                    return null;
                    
                  },
                  ),
           
                  SizedBox(height: 30),
                  AppButton(text:Text("Reset Password"),
                   onPressed:(){
                     print('email ====${emailController!.text}');
                     if(keyForm.currentState!.validate());
                     print("from valide");

                    Navigator.push(context,MaterialPageRoute(builder:(context)=>EmailScreen()));
                   })
                
            
                
                
           ],),
       
       ),
     ),
   ) ,
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   )
   
   
   
   
   
   
   
   
   
   
   ;
   







  }
}