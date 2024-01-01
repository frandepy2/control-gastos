class TransactionModel {
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

  TransactionModel({
    String? description,
    bool? isOutgoing,
    String? category,
    DateTime? dateCreated,
    double? amount,
  }) {
    _description = description;
    _isOutgoing = isOutgoing;
    _category = category;
    _dateCreated = dateCreated;
    _amount = amount;
  }

  TransactionModel.fromJson(dynamic json) {
    _description = json["description"];
    _isOutgoing = json["isOutgoing"];
    _category = json["category"];
    _dateCreated = DateTime.parse(json["dateCreated"]);
    _amount = json["amount"];
  }

  Future<Map<String, dynamic>> toJson() async {
    var json = <String, dynamic>{};
    json["description"] = _description;
    json["isOutgoing"] = _isOutgoing;
    json["category"] = _category;
    json["dateCreated"] = _dateCreated;
    json["amount"] = _amount;

    return json;
  }
}
