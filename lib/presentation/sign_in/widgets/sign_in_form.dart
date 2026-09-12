import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/auth_bloc.dart';
import 'package:notes_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:notes_ddd/domain/core/failures.dart';

import 'package:notes_ddd/domain/auth/auth_failure.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {

            final message = failure.map(
              cancelledByUser: (_) => 'Cancelled',
              serverError: (_) => 'Server error',
              emailAlreadyInUse: (_) => 'Email already in use',
              invalidEmailAndPasswordCombination: (_) =>
              'Invalid email and password combination',
            );

            ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(
              SnackBar(content: Text(message))
            );
          }, (_) {
            context.router.push(const NotesOverviewRoute());
            context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
          }),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const Text(
                '📝',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 130),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  label: Text('Email'),
                ),
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => context.read<SignInFormBloc>().add(
                  SignInFormEvent.emailChanged(value),
                ),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid Email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  label: Text('Password'),
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context.read<SignInFormBloc>().add(
                  SignInFormEvent.passwordChanged(value),
                ),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.password.value.fold(
                      (f) => f.maybeMap(
                        shortPassword: (_) => 'Short Password',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                        const SignInFormEvent.signInWithEmailAndPasswordPressed(),
                      );
                    },
                    child: const Text('SIGN IN'),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                        const SignInFormEvent.registerWithEmailAndPasswordPressed(),
                      );
                    },
                    child: const Text('REGISTER'),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(
                    const SignInFormEvent.signInWithGooglePressed(),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                ),
                child: const Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox( height: 30,),
                const LinearProgressIndicator()
              ]
            ],
          ),
        );
      },
    );
  }
}
