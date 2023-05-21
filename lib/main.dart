import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Blocs/AddRecepie/AddRecepieBloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'Blocs/CheckBox_Bloc/CheckBoxBloc.dart';
import 'Practice.dart';
import 'Views/AddNewRecepie.dart';
import 'Views/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CheckBoxBloc(),
        ),
        BlocProvider(
          create: (context) => AddRecepieBloc(),
        ),
      ],
      child: ResponsiveSizer(
          builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          theme: ThemeData(
            primarySwatch: Colors.orange,
            textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
          ),
        );
      }),
    );
  }
}
