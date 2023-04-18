import 'package:equatable/equatable.dart';

class FoodEntitiy extends Equatable {
  final String name;

  const FoodEntitiy({
    this.name = "",
  });

  // set name(String value) {
  //   name = value;
  // }

  @override
  List<Object?> get props => [
        name,
      ];
}
