class TransactionModel {
  String? _uuid;
  String? _uid;
  String? _description;
  bool? _isOutgoing;
  String? _category;
  DateTime? _dateCreated;
  double? _amount;

  String? get description => _description;
  bool? get isOutgoing => _isOutgoing;
  String? get category => _category;
  DateTime? get dateCreated => _dateCreated;
  double? get amount => _amount;
  String? get uid => _uid;
  String? get uuid => _uuid;

  TransactionModel({
    String? description,
    bool? isOutgoing,
    String? category,
    DateTime? dateCreated,
    double? amount,
    String? uid,
    String? uuid,
  }) {
    _description = description;
    _isOutgoing = isOutgoing;
    _category = category;
    _dateCreated = dateCreated;
    _amount = amount;
    _uid = uid;
    _uuid = uuid;
  }

  TransactionModel.fromJson(dynamic json) {
    _description = json["description"];
    _isOutgoing = json["isOutgoing"];
    _category = json["category"];
    _dateCreated = DateTime.parse(json["dateCreated"]);
    _amount = json["amount"];
    _uid = json["uid"];
    _uuid = json["uuid"];
  }

  Future<Map<String, dynamic>> toJson() async {
    var json = <String, dynamic>{};
    json["description"] = _description;
    json["isOutgoing"] = _isOutgoing;
    json["category"] = _category;
    json["dateCreated"] = _dateCreated;
    json["amount"] = _amount;
    json["uid"] = _uid;
    json["uuid"] = _uuid;

    return json;
  }
}
