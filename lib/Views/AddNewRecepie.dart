import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Blocs/AddRecepie/AddRecepieBloc.dart';
import 'package:foodapp/Models/NewRecepies.dart';
import 'package:foodapp/Widgets/BottomSheet.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Blocs/AddRecepie/AddRecepieState.dart';
import '../Widgets/ViewRecepie.dart';

class AddRecepie extends StatefulWidget {
  const AddRecepie({Key? key}) : super(key: key);

  @override
  State<AddRecepie> createState() => _AddRecepieState();
}

class _AddRecepieState extends State<AddRecepie> {

  final PageController controller = PageController();
  // Timer? timer;
  // int currentPage = 0;
  // List<String> images = [
  //   "images/vegSalad.jpeg",
  //   "images/fruitsalad.jpeg",
  //   "images/egg.jpeg",
  //   "images/rice.jpeg",
  //   "images/chicken.jpeg",
  //   "images/chinease.jpeg",
  //   "images/shakes.jpeg",
  // ];
  @override
  // void initState() {
  //   super.initState();
  //   timer = Timer.periodic(Duration(seconds: 3),
  //           (Timer t) {
  //         currentPage = (currentPage + 1) % images.length;
  //         controller.animateToPage(
  //           currentPage,
  //           duration: Duration(milliseconds: 500),
  //           curve: Curves.ease,
  //         );
  //       });
  // }
  // @override
  // void dispose() {
  //   timer?.cancel();
  //   super.dispose();
  // }
  Recepies recepie = new Recepies();
  Recepie dialog = new Recepie();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bottomSheet(context);
          },
          backgroundColor: Colors.black,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),


              Text(
                "Add New Recepie",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 4.h),
              ),

              // Container(
              //
              //   width: MediaQuery.of(context).size.width,
              //   height: MediaQuery.of(context).size.height*0.25,
              //   child: PageView.builder(
              //     controller: controller,
              //     itemCount: images.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       return Padding(
              //         padding: EdgeInsets.symmetric(horizontal: 3.w),
              //         child: Container(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             image: DecorationImage(
              //               image: AssetImage(images[index]),fit: BoxFit.cover,
              //             )
              //           ),
              //
              //         ),
              //       );
              //     },
              //     onPageChanged: (int index) {
              //       setState(() {
              //         currentPage = index;
              //       });
              //     },
              //   ),
              // ),
              SizedBox(height: 3.h,),
              BlocConsumer<AddRecepieBloc, States>(
                  listener: (context, state) {
                    // Do something when a new event is dispatched to the bloc
                  },
                  builder: (context, state) {
                    if (state is AddRecepieState) {
                      print(state.title.length);
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: GridView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: state.title.length,
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 2),
                            itemBuilder: (context, int index) {
                              return InkWell(
                                onTap: () {
                                  dialog.showRecepie(
                                      context,
                                      state.title[index],
                                      state.subtitle[index],
                                      state.pics[index]
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 10.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(20),
                                          ),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              state.pics[index],
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        state.title[index],
                                        style: TextStyle(
                                          fontSize: 2.6.h,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.symmetric(horizontal: 3.w),
                                        child: Text(
                                          state.subtitle[index],
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 2.h,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    }

                    else {
                      return Container();
                    }
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}

