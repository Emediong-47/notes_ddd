import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/auth_bloc.dart';
import 'package:notes_ddd/injectable.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';
import 'package:notes_ddd/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = AppRouter();


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.green[800],
            foregroundColor: Colors.white,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          primaryColor: Colors.green[800],
          inputDecorationTheme: InputDecorationTheme(
            prefixIconColor: Colors.green[800],
            labelStyle: TextStyle(color: Colors.green[800]),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        title: 'Notes DDD',
      ),
    );
  }
}
