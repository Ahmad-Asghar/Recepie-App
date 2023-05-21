import 'package:flutter/material.dart';
import 'package:foodapp/Views/RecepieDescriptionPage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Models/lists.dart';
import 'VegetableDescription.dart';

class VegetableRecepie extends StatelessWidget {
final int index;
  VegetableRecepie({Key? key, required this.index}) : super(key: key);
  Lists list = new Lists();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.70,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/vegSalad.jpeg"),
                                    fit: BoxFit.cover)),
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: double.infinity,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: double.infinity,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Material(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                          elevation: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    topLeft: Radius.circular(30))),
                            height: MediaQuery.of(context).size.height * 0.55,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 3.h,
                                      ),
                                      Text(
                                        "Vegetable Recepies",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 2.8.h,
                                            color: Colors.brown),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        "Enjoy one of your best Vegetable based\nrecepies..",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 2.h),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.38,
                                        child: Expanded(
                                          child: ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: list.VegRecepies.length,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                  const EdgeInsets.all(8.0),
                                                  child: InkWell(
                                                    onTap: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VegetableDescription(indexx: index,)));
                                                    },
                                                    child: Container(
                                                      width: 67.w,
                                                      child: Stack(
                                                        alignment:
                                                        Alignment.topRight,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Container(
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .green[300],
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                        25)),
                                                                width: 50.w,
                                                                height: MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .height *
                                                                    0.38,
                                                                child: Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                      4.w),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Text(
                                                                        list.VegRecepies[index],
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .brown,
                                                                            fontSize:
                                                                            2.3
                                                                                .h,
                                                                            fontWeight:
                                                                            FontWeight.bold),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                        1.5.h,
                                                                      ),
                                                                      Text(
                                                                        "A Vegetable dish that you will be taking as lunch,dinner or breakfast....",
                                                                        style:
                                                                        TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                          1.7.h,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                        3.5.h,
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          Text(
                                                                            list.calories[index],
                                                                            style: TextStyle(
                                                                                color:
                                                                                Colors.brown,
                                                                                fontSize: 2.3.h,
                                                                                fontWeight: FontWeight.bold),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                            2.w,
                                                                          ),
                                                                          Text(
                                                                            "kacl",
                                                                            style:
                                                                            TextStyle(
                                                                              color:
                                                                              Colors.white,
                                                                              fontSize:
                                                                              2.h,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                        2.2.h,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 17.w,
                                                                height: MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .height *
                                                                    0.38,
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            child: Image(
                                                              image: AssetImage(
                                                                list.eggsImages[index],
                                                              ),
                                                              fit: BoxFit.cover,
                                                            ),
                                                            height: 19.h,
                                                            width: 40.w,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.4.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.w),
                  child: Text(
                    "Your Favourites",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 3.h,
                        color: Colors.brown),
                  ),
                ),
                SizedBox(
                  height: 1.6.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.w),
                  child: Container(

                    height: 15.h,
                    width: double.infinity,
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 2.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(list.recepies[index]),fit: BoxFit.cover
                                      ),
                                      color: Colors.brown[300],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height: 12.h,
                                    width: 40.w,

                                  ),
                                  SizedBox(height: 0.8.h,),
                                  Text(list.recepiesName[index],style: TextStyle(
                                      fontSize: 1.7.h,fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
