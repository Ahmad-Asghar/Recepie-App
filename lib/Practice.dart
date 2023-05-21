// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:foodapp/Blocs/CheckBox_Bloc/CheckBoxEvent.dart';
// import 'package:foodapp/Widgets/CustomTextField.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
//
// import '../Blocs/CheckBox_Bloc/CheckBoxBloc.dart';
// import '../Blocs/CheckBox_Bloc/CheckBoxState.dart';
//
// class SignUpPage extends StatelessWidget {
//   const SignUpPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           child: Column(
//             children: [
//               Container(
//
//                 height: 83.h,
//                 width: double.infinity,
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//                   children: [
//
//                     Column(
//                       children: [
//                         Container(
//                           child:Column(
//                             children: [
//                               SizedBox(
//                                 height: 16.h,
//                               ),
//                               Row(
//                                 mainAxisAlignment:MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Column(
//                                     crossAxisAlignment:CrossAxisAlignment.start,
//                                     children: [
//                                       Text("Welcome!",style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 4.h
//                                       ),),
//                                       SizedBox(height: 1.h,),
//                                       Text("Sign In to Continue",style: TextStyle(
//
//                                           fontSize: 3.h
//                                       ),),
//                                     ],
//                                   ),
//                                   Image(image: AssetImage("images/plate.png"),height: 10.h,)
//                                 ],
//                               ),
//                               SizedBox(height:10.h,),
//                               CustomTextField(text: 'Name', icon: Icons.person,),
//                               SizedBox(height:4.h,),
//                               CustomTextField(text: 'Phone Number', icon: Icons.phone_iphone_rounded,),
//                             ],
//                           ),
//                           decoration: BoxDecoration(
//                               color: Colors.orange[300],
//                               borderRadius: BorderRadius.only(
//                                   bottomLeft: Radius.circular(40),
//                                   bottomRight: Radius.circular(40)
//                               )
//                           ),
//                           width: MediaQuery.of(context).size.width,
//                           height:79.h,
//                         ),
//                         Container(
//
//                           width: double.infinity,
//                           height: 4.h,
//                         )
//                       ],
//                     ),
//
//                     BlocBuilder<CheckBoxBloc, CheckBoxState>(
//                       builder: (context, state) {
//                         return MaterialButton(
//                           child: Text("Sign Up!",style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 2.5.h
//                           ),),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(40)
//                           ),
//                           color: state is Checked ?Colors.black:Colors.grey,
//                           height: 10.h,
//                           minWidth: MediaQuery.of(context).size.width*0.7, onPressed: () {
//
//
//                         },
//
//                         );
//                       },
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(height: 2.h,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   BlocBuilder<CheckBoxBloc, CheckBoxState>(
//                     builder: (context, state) {
//                       bool isChecked = false;
//                       if (state is Checked) {
//                         isChecked = true;
//                       }
//                       return Checkbox(
//                         value: isChecked,
//                         onChanged: (bool? newValue) {
//                           if (newValue != null) {
//                             if (newValue == true) {
//                               context.read<CheckBoxBloc>().add(Selected());
//                             } else {
//                               context.read<CheckBoxBloc>().add(UnSelected());
//                             }
//                           }
//                         },
//                       );
//                     },
//                   ),
//
//                   Text("I agree all the terms and conditions!")
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//


import 'dart:async';
import 'package:flutter/material.dart';

class AutoScrollPage extends StatefulWidget {
  @override
  _AutoScrollPageState createState() => _AutoScrollPageState();
}

class _AutoScrollPageState extends State<AutoScrollPage> {
  final PageController controller = PageController();
  Timer? timer;
  int currentPage = 0;
  List<String> images = [
    "https://via.placeholder.com/300",
    "https://via.placeholder.com/300/0000FF/808080",
    "https://via.placeholder.com/300/FF0000/FFFFFF",
    "https://via.placeholder.com/300/00FF00/000000",
  ];
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3),
            (Timer t) {
      currentPage = (currentPage + 1) % images.length;
      controller.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auto Scroll Images"),
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Image.network(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
        onPageChanged: (int index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}
