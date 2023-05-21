import 'package:flutter/material.dart';
import 'package:foodapp/Views/SignUpPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
SizedBox(height: MediaQuery.of(context).size.height*0.15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome to ",style: TextStyle(
                    fontSize: 3.5.h,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Text(" Recepia",style:   GoogleFonts.dancingScript(
                      fontSize: 5.5.h,
                      fontWeight: FontWeight.bold)
                  ),
                ]
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/splash.png"),
                    fit: BoxFit.fill
                  )
                ),
child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Padding(
      padding:  EdgeInsets.symmetric(vertical: 5.h),
      child: Image(image: AssetImage("images/plate2.png"),),
    )
  ],
),
                height: 30.h,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.07,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding:  EdgeInsets.only(left: 10.w),
                    child: Text("Unlock Your Dincline\nSign Up Now!",style: TextStyle(
                        fontSize: 2.7.h,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                 Material(
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(60),
                     topLeft: Radius.circular(60),
                   ),
                   elevation: 10,
                   child: InkWell(
                     onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                     },
                     child: Container(
                       decoration: BoxDecoration(
                           color: Colors.orange[400],
                         borderRadius: BorderRadius.only(
                           bottomLeft: Radius.circular(60),
                           topLeft: Radius.circular(60),
                         )
                       ),
child: Center(child: Icon(Icons.arrow_right_alt_rounded,size: 6.h,),),
                       height: 12.h,
                       width: 17.w,
                     ),
                   ),
                 )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
