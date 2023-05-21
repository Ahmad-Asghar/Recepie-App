import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Blocs/CheckBox_Bloc/CheckBoxEvent.dart';
import 'package:foodapp/Views/HomePage.dart';
import 'package:foodapp/Widgets/CustomTextField.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Blocs/CheckBox_Bloc/CheckBoxBloc.dart';
import '../Blocs/CheckBox_Bloc/CheckBoxState.dart';
import '../Widgets/AlertDialog.dart';

class SignUpPage extends StatelessWidget {
   SignUpPage({Key? key}) : super(key: key);


  TextEditingController name=TextEditingController();
  TextEditingController phone=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 83.h,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 16.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Welcome!",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 4.h),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Text(
                                          "Sign In to Continue",
                                          style: TextStyle(fontSize: 3.h),
                                        ),
                                      ],
                                    ),
                                    Image(
                                      image: AssetImage("images/plate.png"),
                                      height: 10.h,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                                  child: CustomTextField(
                                    controller: name,
                                    text: 'Name',
                                    icon: Icons.person,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                                  child: CustomTextField(
                                    controller: phone,
                                    text: 'Phone Number',
                                    icon: Icons.phone_iphone_rounded,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.orange[300],
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
                            width: MediaQuery.of(context).size.width,
                            height: 79.h,
                          ),
                          Container(
                            width: double.infinity,
                            height: 4.h,
                          )
                        ],
                      ),
                      BlocBuilder<CheckBoxBloc, CheckBoxState>(
                        builder: (context, state) {
                          return MaterialButton(
                            child: Text(
                              "Sign Up!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 2.5.h),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            color:
                                state is Checked ? Colors.black : Colors.grey,
                            height: 10.h,
                            minWidth: MediaQuery.of(context).size.width * 0.7,
                            onPressed: () {


                              if(state is Checked){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              }
                              else{
                                ErrorDialoge(context, "Fill the fields", Icons.hourglass_empty);
                              }
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<CheckBoxBloc, CheckBoxState>(
                      builder: (context, state) {
                        bool isChecked = false;
                        if (state is Checked) {
                          isChecked = true;
                        }
                        return Checkbox(
                          value: isChecked,
                          onChanged: (bool? newValue) {
                            if (newValue != null) {
                              if (newValue == true) {
                                context.read<CheckBoxBloc>().add(Selected());
                              } else {
                                context.read<CheckBoxBloc>().add(UnSelected());
                              }
                            }
                          },
                        );
                      },
                    ),
                    Text("I agree all the terms and conditions!")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
