import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/presentation/notes/note_form/note_form_page.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:notes_ddd/presentation/sign_in/sign_in_page.dart';
import 'package:notes_ddd/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: NotesOverviewRoute.page),
    AutoRoute(page: NoteFormRoute.page, fullscreenDialog: true)
  ];
}
