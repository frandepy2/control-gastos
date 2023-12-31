class SessionModel {
  String? _username;
  String? _displayName;
  String? _email;
  bool? _isEmailVerified;
  bool? _isAnonimous;
  DateTime? _lastSignInTime;
  String? _phoneNumber;
  String? _photoUrl;
  String? _uid;

  String? get username => _username;
  String? get displayName => _displayName;
  String? get email => _email;
  bool? get isEmailVerified => _isEmailVerified;
  bool? get isAnonimous => _isAnonimous;
  DateTime? get lastSignInTime => _lastSignInTime;
  String? get phoneNumber => _phoneNumber;
  String? get photoUrl => _photoUrl;
  String? get uid => _uid;

  SessionModel({
    String? username,
    String? displayName,
    String? email,
    bool? isEmailVerified,
    bool? isAnonimous,
    DateTime? lastSignInTime,
    String? phoneNumber,
    String? photoUrl,
    String? uid,
  }) {
    _username = username;
    _displayName = displayName;
    _email = email;
    _isEmailVerified = isEmailVerified;
    _isAnonimous = isAnonimous;
    _lastSignInTime = lastSignInTime;
    _phoneNumber = phoneNumber;
    _photoUrl = photoUrl;
    _uid = uid;
  }

  SessionModel.fromJson(dynamic json) {
    _username = json["username"];
    _displayName = json["displayName"];
    _email = json["email"];
    _isEmailVerified = json["isEmailVerified"];
    _isAnonimous = json["isAnonimous"];
    _lastSignInTime = DateTime.parse(json["lastSignInTime"]);
    _phoneNumber = json["phoneNumber"];
    _photoUrl = json["photoUrl"];
    _uid = json["uid"];
  }

  Future<Map<String, dynamic>> toJson() async {
    var map = <String, dynamic>{};
    map["username"] = _username;
    map["displayName"] = _displayName;
    map["email"] = _email;
    map["isEmailVerified"] = _isEmailVerified;
    map["isAnonimous"] = _isAnonimous;
    map["lastSignInTime"] = _lastSignInTime.toString();
    map["phoneNumber"] = _phoneNumber;
    map["photoUrl"] = _photoUrl;
    map["uid"] = _uid;
    return map;
  }
}
