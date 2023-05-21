import 'package:bloc/bloc.dart';
import 'package:foodapp/Blocs/CheckBox_Bloc/CheckBoxEvent.dart';
import 'package:foodapp/Blocs/CheckBox_Bloc/CheckBoxState.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';


class CheckBoxBloc extends Bloc<CheckEvent,CheckBoxState>{

  CheckBoxBloc():super(Unchecked()){
    on<Selected>(_select);
    on<UnSelected>(_unSelect);
  }
  void _select(Selected event,Emitter<CheckBoxState> emit){

    emit (Checked());
  }
  void _unSelect(UnSelected event,Emitter<CheckBoxState> emit){

    emit (Unchecked());
  }



}
