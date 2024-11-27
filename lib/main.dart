import 'package:flowerpot/app/app.dart';
import 'package:flowerpot/bootstrap.dart';

void main() {
  bootstrap(
    (result) {
      return App(serviceLocator: result.serviceLocator);
    },
  );
}
