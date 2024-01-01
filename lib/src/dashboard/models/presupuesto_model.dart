class PresupuestoModel {
  String? _uuid;
  String? _uid;
  double? _presupuesto;

  String? get uuid => _uuid;
  String? get uid => _uid;
  double? get presupuesto => _presupuesto;

  PresupuestoModel({
    String? uuid,
    String? uid,
    double? presupuesto,
  }) {
    _presupuesto = presupuesto;
    _uid = uid;
    _uuid = uuid;
  }
}
