import 'package:domain/models/models.dart';

abstract class UpdateGameParametersUsecases {
  Future<FlowerpotParamsModel> execute(FlowerpotParamsModel gameParamsModel);
}
