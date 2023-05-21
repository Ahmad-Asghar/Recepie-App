abstract class States{}

class AddRecepieInitialState extends States{
}

class AddRecepieState extends States{

  final List<String> title;
  final List<String> subtitle;
  final List<String> pics;
  AddRecepieState({required this.title,required this.subtitle,required this.pics});
}