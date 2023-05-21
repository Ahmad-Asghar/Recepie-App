import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Models/lists.dart';

class VegetableDescription extends StatelessWidget {
  int indexx;
  VegetableDescription({Key? key, required this.indexx}) : super(key: key);
  Lists list= new Lists();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[300],
        body: Container(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 2.w,top: 1.h),
                      child: IconButton(onPressed: (){
                        Navigator.pop(context);
                      },color: Colors.white, icon: Icon(Icons.arrow_back)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/halfplate.png"),
                              fit: BoxFit.fill)),
                      width: 50.w,
                      height: MediaQuery.of(context).size.height * 0.25,
                    )
                  ],
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.24,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 1.3.h,
                          ),
                          Container(
                            height: 1.h,
                            width: 12.w,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 1.2.h,
                          ), Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(list.VegRecepies[this.indexx],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 3.h, color: Colors.brown)), Container(
                                child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [Text(
                                        list.calories[this.indexx],
                                        style: TextStyle(
                                            fontSize: 2.1.h,
                                            color: Colors.brown,
                                            fontWeight: FontWeight.bold),
                                      ),
                                        Text(
                                          "calories",
                                          style: TextStyle(
                                            fontSize: 1.7.h,
                                            color: Colors.brown,
                                          ),
                                        ),
                                      ],
                                    )),
                                height: 4.5.h,
                                width: 26.w,
                                decoration: BoxDecoration(
                                    color: Colors.green[300],
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.2.h,
                          ),
                          Text(
                            "Learn how to make perfect "+ list.VegRecepies[this.indexx]+" with this quick recepie..",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 2.24.h,
                            ),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Ingredients",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 2.3.h,
                                    color: Colors.brown),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          ListTile(
                            leading: Image(
                              image: AssetImage("images/eggss.png"),
                              height: 5.h,
                            ),
                            title: Text("Eggs"),
                            trailing: Text("2"),
                          ),
                          Divider(),
                          ListTile(
                            leading: Image(
                              image: AssetImage("images/butter.png"),
                              height: 5.h,
                            ),
                            title: Text("Butter"),
                            trailing: Text("1 tbsp"),
                          ),
                          Divider(),
                          ListTile(
                            leading: Image(
                              image: AssetImage("images/cream.png"),
                              height: 5.h,
                            ),
                            title: Text("Single Cream"),
                            trailing: Text("6 tbsp"),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Directions",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 2.3.h,
                                    color: Colors.brown),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 1.5.h,
                              ),
                              SizedBox(
                                width: 3.h,
                              ),
                              Expanded(
                                child: Text(
                                  "Lightly wisk the two large eggs and then add 6tbsp single cream togather",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 2.24.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 1.5.h,
                              ),
                              SizedBox(
                                width: 3.h,
                              ),
                              Expanded(
                                child: Text(
                                  "Melt 1tbsp butten in a non stick frying pan",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 2.24.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 1.5.h,
                              ),
                              SizedBox(
                                width: 3.h,
                              ),
                              Expanded(
                                child: Text(
                                  "Pour the egg mixture and suit without substituing for 20 sec, and then after by lifting the pan pour the agg into you plate..",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 2.24.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 1.5.h,
                              ),
                              SizedBox(
                                width: 3.h,
                              ),
                              Expanded(
                                child: Text(
                                  "Add some black powder or masla",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 2.24.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 1.5.h,
                              ),
                              SizedBox(
                                width: 3.h,
                              ),
                              Expanded(
                                child: Text(
                                  "Ready to Serve or Eat..",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 2.24.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 1.5.h,
                              ),
                              SizedBox(
                                width: 3.h,
                              ),
                              Expanded(
                                child: Text(
                                  "You have done a good job...Check for more Recepies",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 2.24.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
