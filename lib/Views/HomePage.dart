import 'package:flutter/material.dart';
import 'package:foodapp/Views/RecepieHomePage.dart';
import 'package:foodapp/Views/VegetableRecepie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Models/lists.dart';
import '../Widgets/BottomSheet.dart';
import '../Widgets/CustomTextField.dart';
import 'AddNewRecepie.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  TextEditingController search = TextEditingController();
  Lists list = new Lists();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>AddRecepie()));
          },
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Search ",
                            style: TextStyle(
                                fontSize: 4.5.h, fontWeight: FontWeight.bold),
                          ),
                          Text("for Recepies",
                              style: GoogleFonts.dancingScript(
                                  fontSize: 6.5.h,
                                  fontWeight: FontWeight.bold)),
                        ]),
                  ),
                  Text(
                    "Search By Recepie name or Ingredient.",
                    style: TextStyle(color: Colors.grey, fontSize: 2.5.h),
                  ),
                  SizedBox(
                    height: 2.3.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(30),
                      child: CustomTextField(
                        controller: search,
                        text: 'Search',
                        icon: Icons.search,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.3.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Expanded(
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: list.allColors.length,
                          itemBuilder: (context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: list.allColors[index],
                                    borderRadius: BorderRadius.circular(20)),
                                width: 25.w,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image(
                                      image: AssetImage(list.images[index]),
                                      height: 8.h,
                                    ),
                                    Text(list.names[index]),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                              fontSize: 2.4.h, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(
                                  fontSize: 2.h, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: 31.h,
                    width: double.infinity,
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemCount: 7,
                          itemBuilder: (context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(25),
                                child: InkWell(
                                  onTap: () {
                                    if (index == 2) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RecepieHomePage(index: index,)));
                                    }
                                    if (index == 0) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VegetableRecepie(
                                                    index: index,
                                                  )));
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    width: 60.w,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 19.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(25),
                                                  topRight:
                                                      Radius.circular(25)),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      list.recepies[index]),
                                                  fit: BoxFit.fill)),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5.w),
                                          child: Text(
                                            list.recepiesName[index],
                                            style: TextStyle(
                                                fontSize: 2.4.h,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 0.7.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5.w),
                                          child: Row(
                                            children: [
                                              Text(
                                                list.calories[index],
                                                style: TextStyle(
                                                    fontSize: 2.4.h,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              Text(
                                                "kacl",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 2.4.h,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
