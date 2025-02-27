import 'package:flutter/material.dart';
import 'package:rim_application/core/widgets/app_button.dart';
import 'package:rim_application/core/widgets/app_input_text.dart';
import 'package:rim_application/screen/select_location.dart';

class CreateNewAccount extends StatefulWidget {  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
   bool obscureText=true;
  TextEditingController? nameController;
  TextEditingController? emailController;
   TextEditingController? passwordController;
   TextEditingController? newpasswordController;
    GlobalKey<FormState> keyForm = GlobalKey<FormState>();
    @override
  void initState() {
    nameController=TextEditingController();
    emailController=TextEditingController();
    passwordController=TextEditingController();
    newpasswordController=TextEditingController();
    super.initState();
  }
  
   @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
    leading: IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back,
      color: Colors.black,
      size: 24,),
      

      ),
   ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24 ),
          child: Form(
            key:keyForm ,
            child: Column(
              children: [
                Text("Create new  account",
                style: TextStyle(color:Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
                )
                ,),
                SizedBox(height: 50
                ),
                AppInputText(
                  label: "Full name",
                  hintText: "Enter your name",
                  controller:nameController ,
                
                  validator: (String? value) {
                        if(value!.isEmpty){
                          return "name is required";
                        }
                        return null;  }
            
                  
                ),
                SizedBox(height:20),
                 AppInputText(
                  label: "Email adress",
                  hintText: "name@example.com",
                  controller:emailController ,
                  
                  validator: (String? value) {
                        if(value!.isEmpty){
                          return "email is required";
                        }
                        return null;  }
            
                  
                ),
            
                 SizedBox(height:20),
                 AppInputText(
                  label: "Create password ",
                  hintText: "Enter your password",
                  controller:passwordController ,
                  obscureText: obscureText,
                  validator: ( value) {
                        if(value!.isEmpty){
                          return "password is required";
                        }
                        return null;  }
            
                  
                ),
                 SizedBox(height:20),
                 AppInputText(
                  label: "Repet password ",
                  hintText: "Enter new password",
                  controller:newpasswordController ,
                  obscureText: obscureText,
                  validator: ( value) {
                        if(value!.isEmpty){
                          return "password is required";
                        }
                        return null;  }
            
                  
                ),
                 
                 
            
            
            
            
            
            
            
            
                SizedBox(height:20)  ,
                AppButton(text:Text("sign up"), 
                onPressed:(){  print('email: $emailController');
                        print('email ====${emailController!.text}');
                        if(keyForm.currentState!.validate()){
                          print("form valide");
                        }})
            
            
            
            
            
            
            
            
            
            
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }}
 