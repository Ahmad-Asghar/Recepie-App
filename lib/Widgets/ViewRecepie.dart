import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Blocs/AddRecepie/AddRecepieBloc.dart';
import '../Blocs/AddRecepie/AddRecepieEvent.dart';

class Recepie{
  showRecepie(BuildContext context,String title,String Subtitle,String image){

    showDialog(context: context, builder: (context){

      return AlertDialog(
       actions: [
         Container(
           color: Colors.white,
           height: MediaQuery.of(context).size.height*0.7,
           width: MediaQuery.of(context).size.width,
           child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 2.w),
             child: Column(
               children: [
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     image: DecorationImage(
                       image: AssetImage(image),
                       fit: BoxFit.cover
                     )
                   ),
                   height: 20.h,
                   width: MediaQuery.of(context).size.width,
                 ),
                 SizedBox(height:3.h),
                 Text(title,style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 4.h
                 ),),
                 SizedBox(height:3.h),
                 Text(Subtitle,style: TextStyle(

                     fontSize: 2.5.h
                 ),),
                 SizedBox(height: 3.h,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     MaterialButton(onPressed: (){
                       Navigator.pop(context);
                     },child: Icon(Icons.arrow_right_alt_rounded,size: 6.h,),),
                     MaterialButton(onPressed: (){
                       context.read<AddRecepieBloc>().add(DeleteRecepieEvent(
                         context: context,
                         title: title,
                         subTitle: Subtitle, pic: image,
                       ));
                       Navigator.pop(context);
                     },
                       child: Icon(Icons.delete,size: 6.h,),),
                   ],
                 )
               ],
             ),
           ),

         )
       ],
      );
    });
  }
}