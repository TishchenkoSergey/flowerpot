import 'package:domain/models/models.dart';

abstract class UpdateGameParametersUsecases {
  Future<FlowerpotParametersModel> execute(FlowerpotParametersModel gameParamsModel);
}
