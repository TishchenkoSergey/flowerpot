import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

late GetIt di;

@InjectableInit.microPackage()
initMicroPackage() {}

@module
abstract class RegisterModule {}
