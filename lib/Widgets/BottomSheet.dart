import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Blocs/AddRecepie/AddRecepieBloc.dart';
import 'package:foodapp/Blocs/AddRecepie/AddRecepieEvent.dart';
import 'package:foodapp/Blocs/CheckBox_Bloc/CheckBoxEvent.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Blocs/CheckBox_Bloc/CheckBoxBloc.dart';
import 'CustomTextField.dart';

bottomSheet(BuildContext context) {
  TextEditingController title = TextEditingController();
  TextEditingController subtitle = TextEditingController();
  showModalBottomSheet(
    isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          height: MediaQuery.of(context).size.height*0.7,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Add New One",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 3.h,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomTextField(
                      text: 'Title',
                      icon: Icons.title,
                      controller: title,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomTextField(
                      text: 'Subtitile',
                      icon: Icons.subdirectory_arrow_left,
                      controller: subtitle,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        context.read<AddRecepieBloc>().add(AddRecepieEvent(
                          context: context,
                              title: title.text.toString(),
                              subTitle: subtitle.text.toString(),
                            ));
                        Navigator.pop(context);

                      },
                      color: Colors.white,
                      child: Text(
                        "Add",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      });
}
