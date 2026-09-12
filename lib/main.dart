import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:notes_ddd/firebase_options.dart';
import 'package:notes_ddd/injectable.dart';
import 'package:notes_ddd/presentation/core/app_widget.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';

final serverClientId = dotenv.get('SERVER_CLIENT_ID');

Future<void> main() async{
  await dotenv.load();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  await GoogleSignIn.instance.initialize(
    serverClientId: serverClientId
  );

  configureDependencies();
  runApp(AppWidget());
}