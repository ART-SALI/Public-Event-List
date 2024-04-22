import 'package:public_event_list/core/helper/type_aliases.dart';
import 'package:public_event_list/core/usecase/usecase.dart';
import 'package:public_event_list/features/sample_feature/domain/repositories/_repository.dart';

class GetFunctionUsecase extends Usecase<bool, NoParams> {
  GetFunctionUsecase({
    required this.repository,
  });

  final Repository repository;

  @override
  FutureFailable<bool> call(NoParams param) {
    return repository.getFunction();
  }
}