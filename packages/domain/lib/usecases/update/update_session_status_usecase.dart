import 'package:domain/domain.dart';

abstract class UpdateSessionStatusUsecase {
  Future<void> execute({
    required SessionStatus status,
  });
}
