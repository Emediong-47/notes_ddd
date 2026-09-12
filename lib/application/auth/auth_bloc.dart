import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc({required this._authFacade}) : super(AuthState.initial()) {
    on<_AuthCheckRequested>(_onAuthCheckRequested);
    on<_SignedOut>(_onSignedOut);
  }

  FutureOr<void> _onAuthCheckRequested(
    _AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) {
    final userOption = _authFacade.getSignedInUser();
    emit(
      userOption.fold(
        () => const AuthState.unAuthenticated(),
        (_) => const AuthState.authenticated(),
      ),
    );
  }

  FutureOr<void> _onSignedOut(_SignedOut event, Emitter<AuthState> emit) async {
    await _authFacade.signOut();
    emit(const AuthState.unAuthenticated());
  }
}
