import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_ddd/domain/auth/auth_failure.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';
import 'package:notes_ddd/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_RegisterWithEmailAndPasswordPressed>(_onRegister);
    on<_SignInWithEmailAndPasswordPressed>(_onSignIn);
    on<_SignInWithGooglePressed>(_onGoogleSignIn);
  }

  Future<void> _onEmailChanged(
    _EmailChanged event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(event.emailStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _onPasswordChanged(
    _PasswordChanged event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        password: Password(event.passwordStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _onRegister(
    _RegisterWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.registerWithEmailandPassword,
      emit,
    );
  }

  Future<void> _onSignIn(
    _SignInWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.signInWithEmailandPassword,
      emit,
    );
  }

  Future<void> _onGoogleSignIn(
    _SignInWithGooglePressed event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none()),
    );
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ),
    );
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress email,
      required Password password,
    })
    forwardedCall,
    Emitter<SignInFormState> emit,
  ) async {
    Option<Either<AuthFailure, Unit>> failureOrSuccess = none();

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none()),
      );
      failureOrSuccess = some(await forwardedCall(
        email: state.emailAddress,
        password: state.password,
      ));
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: failureOrSuccess,
      ),
    );
  }
}
