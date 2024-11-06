import 'package:flutter/material.dart';

import '../../screen/welcome_back.dart';
import '../theme/app_colors.dart';

class AppButton extends StatelessWidget {
  final Widget text;
  final void Function() onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderSide? borderSide;
const AppButton(
  { Key? key,
  required this.text,
  required this.onPressed,
  this.backgroundColor,
  this.foregroundColor, this.borderSide
  
   }
  ) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor:backgroundColor?? AppColors.primaryColor,
              foregroundColor:foregroundColor??AppColors.whiteColor,
              fixedSize:const Size(317,60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: borderSide ?? BorderSide.none,
                
                
              ) ),
              
             onPressed: onPressed,
             
             child:text);
  }
}