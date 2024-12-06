import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

late GetIt di;

@InjectableInit.microPackage()
void initMicroPackage() {}

@module
abstract class RegisterModule {}
