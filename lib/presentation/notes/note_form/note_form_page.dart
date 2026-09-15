import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/domain/notes/note_failure.dart';
import 'package:notes_ddd/injectable.dart';
import 'package:notes_ddd/presentation/notes/note_form/widgets/note_form_page_scaffold.dart';
import 'package:notes_ddd/presentation/notes/note_form/widgets/saving_in_progress_overlay.dart';

@RoutePage()
class NoteFormPage extends StatelessWidget {
  const NoteFormPage({super.key, this.editedNotes});

  final Note? editedNotes;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<NoteFormBloc>()
            ..add(NoteFormEvent.initialized(optionOf(editedNotes))),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (previous, current) =>
            previous.saveFailureOrSuccessOption !=
            current.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(() {}, (either) {
            either.fold((failure) {
              final messages = failure.map(
                emptyNotes: (_) => 'Impossible Error',
                unexpected: (_) =>
                    'Unexpected error occurred while deleting, please contact support team',
                insufficientPermission: (_) => 'Insufficient permissions ❌',
                documentNotFound: (_) => 'Document Not Found',
              );

              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(messages)));
            }, (r) => context.router.popUntilRoot());
          });
        },
          buildWhen: (previous, current) => previous.isSaving != current.isSaving,
         builder: (BuildContext context, NoteFormState state) {
          return Stack(
            children: [
              const NoteFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving)
            ],
          );
         }
      ),
    );
  }
}
