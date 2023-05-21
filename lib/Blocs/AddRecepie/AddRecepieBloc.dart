import 'package:bloc/bloc.dart';
import 'package:foodapp/Blocs/AddRecepie/AddRecepieEvent.dart';
import 'package:foodapp/Blocs/AddRecepie/AddRecepieState.dart';

import '../../Models/NewRecepies.dart';

class AddRecepieBloc extends Bloc<Events,States>{

  Recepies recepie =new Recepies();

  AddRecepieBloc():super(AddRecepieState(title:Recepies.Title, subtitle: Recepies.subTitle, pics: Recepies.recepiePics,)){

on<AddRecepieEvent>(addRecepie);
on<DeleteRecepieEvent>(deleteRecepie);
  }
  void addRecepie(AddRecepieEvent event , Emitter<States> emit){
    Recepies.Title.add(event.title);
    Recepies.subTitle.add(event.subTitle);
    Recepies.recepiePics.add("images/vegSalad.jpeg");

    print(event.title.toString()+"   Addded   "+Recepies.Title.length.toString());
    print(event.subTitle.toString()+"   Addded");
    print("OK i am calling an event");
    emit(AddRecepieState(title: Recepies.Title, subtitle: Recepies.subTitle, pics:Recepies.recepiePics));
  }
  void deleteRecepie(DeleteRecepieEvent event , Emitter<States> emit){
    Recepies.Title.remove(event.title);
    Recepies.subTitle.remove(event.subTitle);
    Recepies.recepiePics.remove(event.pic);

    emit(AddRecepieState(title: Recepies.Title, subtitle: Recepies.subTitle, pics:Recepies.recepiePics));
  }
}
