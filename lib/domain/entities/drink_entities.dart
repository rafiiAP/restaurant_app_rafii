import 'package:equatable/equatable.dart';

class DrinkEntitiy extends Equatable {
  final String name;

  const DrinkEntitiy({
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
