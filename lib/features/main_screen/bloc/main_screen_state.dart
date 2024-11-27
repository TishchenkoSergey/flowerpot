part of 'main_screen_cubit.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    @Default(false) bool continueAvailability,
    FlowerpotParamsModel? params,
    Object? error,
  }) = _MainScreenState;

  const MainScreenState._();
}
