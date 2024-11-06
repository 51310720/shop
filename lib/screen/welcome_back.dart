import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rim_application/core/helpress/app_regex.dart';
import 'package:rim_application/core/theme/app_colors.dart';
import 'package:rim_application/core/widgets/app_button.dart';
import 'package:rim_application/core/widgets/app_input_text.dart';
import 'package:rim_application/screen/create_new_account.dart';

class WelcomeBack extends StatefulWidget {
  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  bool obscureText=true;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  

  void showPassword(){
    setState(() { obscureText=!obscureText;
      
    });
   
    print("obscuretext $obscureText");
  }
  @override
  void initState() {
    emailController=TextEditingController();
    passwordController=TextEditingController();

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
   





    backgroundColor: Colors.white,
    body:SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Form(
          key:keyForm ,
          child: Column(children: [
            Text("Welcome Back!",style: TextStyle(color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold),),
               AppInputText(
                  label:'Email' ,
                  hintText:"name@example.com" ,
                  prefixIcon: Icons.email,
                  obscureText: obscureText,
                  
                   
                       controller: emailController,
                       validator:(String? value) {
                    if(value!.isEmpty){
                      return "email is required";
                    }
                    else if(!AppRegex.isEmailValid(value)){
                      return "invalide email";
                    }
                    return null;
                    
                  },
                  ), 



















                const SizedBox(height: 30.0,),
                AppInputText(
                  label:'Password' ,
                  hintText:"***********" ,
                  prefixIcon:  Icons.lock,
                  obscureText: obscureText,
                  suffix: IconButton(onPressed: () {
                    showPassword();},
                    icon:Icon(
                      Icons.visibility,color:AppColors.primaryColor,size: 20,)),
                       controller: passwordController,
                       validator: (value) {
                    if(value!.isEmpty){
                      return "Password is required";
                    }
                    return null;
                    
                  }, 
                  ), 
                  
                      

                














    
                
              
                
                
                
                
                
                
                
           const SizedBox(height: 175),
                 AppButton(
                  text: Text("Sign In"),
                  onPressed: () {
                    print('email: $emailController');
                    print('email ====${emailController!.text}');
                    if(keyForm.currentState!.validate()){
                      print("form valide");
                    }
                    
                   // Navigator.of(context).push(
                     // MaterialPageRoute(
                       // builder: (context) => CreateNewAccount(),
                     // ),
                   // );
                  },
                )
                
                
                
                
                
          ]
          
          
          ),
        ),
      ),
    ) ,
      

      
     
      

    
    


    



   );
  }
}
