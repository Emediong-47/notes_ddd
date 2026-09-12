import 'package:firebase_auth/firebase_auth.dart' as  firebase;
import 'package:notes_ddd/domain/core/value_objects.dart';
import 'package:notes_ddd/domain/auth/user.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() => User(id: UniqueId.fromUniqueString(uid));
}