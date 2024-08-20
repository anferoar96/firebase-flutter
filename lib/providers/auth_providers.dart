import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});
final authStateProvider = Provider<User?>((ref) {
  return ref.watch(firebaseAuthProvider).currentUser;
});
