import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';
import 'package:notes_ddd/domain/core/errors.dart';
import 'package:notes_ddd/injectable.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentReference<Map<String, dynamic>>> userDocument() async {
    final userOption = getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance.collection('users').doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference<Map<String, dynamic>> {
  CollectionReference<Map<String, dynamic>> get noteCollection => collection('notes');
}