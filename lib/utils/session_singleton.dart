class SessionSingleton {
  String? username;
  String? displayName;
  String? email;
  bool? isEmailVerified;
  bool? isAnonimous;
  DateTime? lastSignInTime;
  String? phoneNumber;
  String? photoUrl;
  String? uid;

  static final SessionSingleton _singleton = SessionSingleton._internal();
  factory SessionSingleton() => _singleton;
  SessionSingleton._internal();
  static SessionSingleton get instance => _singleton;

  static clearData() {
    SessionSingleton.instance.username = null;
    SessionSingleton.instance.displayName = null;
    SessionSingleton.instance.email = null;
    SessionSingleton.instance.isEmailVerified = null;
    SessionSingleton.instance.isAnonimous = null;
    SessionSingleton.instance.lastSignInTime = null;
    SessionSingleton.instance.phoneNumber = null;
    SessionSingleton.instance.photoUrl = null;
    SessionSingleton.instance.uid = null;
  }
}
