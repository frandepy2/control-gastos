import 'package:control_gastos/src/login/models/session_model.dart';
import 'package:control_gastos/utils/session_singleton.dart';

class SessionHelper {
  static SessionHelper? _instance;
  factory SessionHelper() => _instance ??= SessionHelper._();
  SessionHelper._() {}

  saveSession(SessionModel session) {
    SessionSingleton.instance.username = session.username;
    SessionSingleton.instance.displayName = session.displayName;
    SessionSingleton.instance.email = session.email;
    SessionSingleton.instance.uid = session.uid;
  }
}
