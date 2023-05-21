import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextField extends StatelessWidget {
   final String text;
  final IconData icon;
  final TextEditingController controller;
  const CustomTextField({Key? key, required this.text, required this.icon, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(30)
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.08,

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Center(
          child: TextField(
controller: controller,
decoration: InputDecoration(
  hintText: text,
  prefixIcon: Icon(icon),
  border: InputBorder.none
),
          ),
        ),
      ),
    );
  }
}
