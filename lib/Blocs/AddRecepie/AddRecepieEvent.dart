import 'package:flutter/cupertino.dart';

abstract class Events{}



class DeleteRecepieEvent extends Events{
  final String title;
  final String subTitle;
  final String pic;
  final BuildContext context;
  DeleteRecepieEvent( {required this.title,required this.subTitle,required this.context,required this.pic});

}
class AddRecepieEvent extends Events{

  final String title;
  final String subTitle;
  final BuildContext context;
  AddRecepieEvent({required this.title,required this.subTitle,required this.context});

}