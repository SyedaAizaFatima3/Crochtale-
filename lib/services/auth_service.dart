import 'package:crochtale/models/user_model.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();

  factory AuthService() {
    return _instance;
  }

  AuthService._internal();

  User? _currentUser;

  User? get currentUser => _currentUser;

  Future<bool> signUp({
    required String email,
    required String password,
    required String name,
    required String userType,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      _currentUser = User(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        email: email,
        name: name,
        userType: userType,
        createdAt: DateTime.now(),
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> signIn({
    required String email,
    required String password,
    required String userType,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      _currentUser = User(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        email: email,
        name: email.split('@')[0],
        userType: userType,
        createdAt: DateTime.now(),
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> signOut() async {
    _currentUser = null;
  }

  bool isLoggedIn() {
    return _currentUser != null;
  }
}