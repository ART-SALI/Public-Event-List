import 'package:public_event_list/core/helper/type_aliases.dart';
import 'package:equatable/equatable.dart';

abstract class Usecase<Type, Params> {
  FutureFailable<Type> call(Params param);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}