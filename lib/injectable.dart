import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:notes_ddd/injectable.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async => getIt.init(environment: Environment.prod);