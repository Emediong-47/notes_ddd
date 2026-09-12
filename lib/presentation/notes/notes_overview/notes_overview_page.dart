import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/auth_bloc.dart';
import 'package:notes_ddd/application/notes/note_actor/note_actor_bloc.dart';
import 'package:notes_ddd/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:notes_ddd/domain/notes/note_failure.dart';
import 'package:notes_ddd/injectable.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/widgets/notes_overview_body_widget.dart';
import 'package:notes_ddd/presentation/routes/app_router.dart';

@RoutePage()
class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<NoteWatcherBloc>()
                ..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(create: (context) => getIt<NoteActorBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (BuildContext context, state) {
              state.maybeMap(
                unAuthenticated: (_) => context.router.push(SignInRoute()),
                orElse: () {},
              );
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  final messages = state.noteFailure.map(
                    emptyNotes: (_) => 'Impossible Error',
                    unexpected: (_) =>
                        'Unexpected error occurred while deleting, please contact support team',
                    insufficientPermission: (_) => 'Insufficient permissions ❌',
                    documentNotFound: (_) => 'Document Not Found',
                  );

                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(content: Text(messages)));
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text('Notes', style: TextStyle(fontWeight: FontWeight.bold)),
            leading: IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
              icon: Transform.rotate(
                angle: 3.14159,
                child: const Icon(Icons.exit_to_app),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.indeterminate_check_box),
              ),
            ],
          ),
          body: const NotesOverviewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              //TODO: navigate to NoteFormPage
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
