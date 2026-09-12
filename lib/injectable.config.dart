// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:notes_ddd/application/auth/auth_bloc.dart' as _i565;
import 'package:notes_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i343;
import 'package:notes_ddd/application/notes/note_actor/note_actor_bloc.dart'
    as _i894;
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart'
    as _i309;
import 'package:notes_ddd/application/notes/note_watcher/note_watcher_bloc.dart'
    as _i824;
import 'package:notes_ddd/domain/auth/i_auth_facade.dart' as _i6;
import 'package:notes_ddd/domain/notes/i_note_repository.dart' as _i570;
import 'package:notes_ddd/infrastructure/auth/firebase_auth_facade.dart'
    as _i41;
import 'package:notes_ddd/infrastructure/core/firebase_injectable_module.dart'
    as _i939;
import 'package:notes_ddd/infrastructure/notes/note_repository.dart' as _i643;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i59.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth,
    );
    gh.lazySingleton<_i116.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn,
    );
    gh.lazySingleton<_i974.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore,
    );
    gh.lazySingleton<_i6.IAuthFacade>(
      () => _i41.FirebaseAuthFacade(
        gh<_i59.FirebaseAuth>(),
        gh<_i116.GoogleSignIn>(),
      ),
    );
    gh.lazySingleton<_i570.INoteRepository>(
      () => _i643.NoteRepository(gh<_i974.FirebaseFirestore>()),
    );
    gh.factory<_i343.SignInFormBloc>(
      () => _i343.SignInFormBloc(gh<_i6.IAuthFacade>()),
    );
    gh.factory<_i894.NoteActorBloc>(
      () => _i894.NoteActorBloc(noteRepository: gh<_i570.INoteRepository>()),
    );
    gh.factory<_i309.NoteFormBloc>(
      () => _i309.NoteFormBloc(noteRepository: gh<_i570.INoteRepository>()),
    );
    gh.factory<_i824.NoteWatcherBloc>(
      () => _i824.NoteWatcherBloc(noteRepository: gh<_i570.INoteRepository>()),
    );
    gh.factory<_i565.AuthBloc>(
      () => _i565.AuthBloc(authFacade: gh<_i6.IAuthFacade>()),
    );
    return this;
  }
}

class _$FirebaseInjectableModule extends _i939.FirebaseInjectableModule {}
