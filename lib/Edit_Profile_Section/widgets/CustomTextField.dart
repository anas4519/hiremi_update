import 'package:flutter/material.dart';
import 'package:hiremi_version_two/Utils/AppSizes.dart';
import 'package:hiremi_version_two/Utils/colors.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, 
    
    required this.controller, required this.hintText, this.textInputType = TextInputType.text,  this.isLarge =false,  this.suffix,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool isLarge;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.black,
      textAlign: TextAlign.start,
      maxLines: isLarge ?3 : 1,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      expands: false,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffix,
        suffixIconColor: AppColors.secondaryText,
        contentPadding: EdgeInsets.symmetric(
            vertical: Sizes.responsiveSm(context),
            horizontal: Sizes.responsiveMd(context)),
        alignLabelWithHint: true,
        hintStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.secondaryText,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(
            color: AppColors.secondaryText,
            width: 0.37,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(
            color: AppColors.secondaryText,
            width: 0.37,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(
            color: AppColors.secondaryText,
            width: 0.37,
          ),
        ),
      ),
    );
  }
}
