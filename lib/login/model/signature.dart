class Signature {
  int? _id;
  int? _employeeRecordId;
  String? _username;
  String? _encodeSign;

  Signature(
      {int? id, int? employeeRecordId, String? username, String? encodeSign}) {
    if (id != null) {
      _id = id;
    }
    if (employeeRecordId != null) {
      _employeeRecordId = employeeRecordId;
    }
    if (username != null) {
      _username = username;
    }
    if (encodeSign != null) {
      _encodeSign = encodeSign;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get employeeRecordId => _employeeRecordId;
  set employeeRecordId(int? employeeRecordId) =>
      _employeeRecordId = employeeRecordId;
  String? get username => _username;
  set username(String? username) => _username = username;
  String? get encodeSign => _encodeSign;
  set encodeSign(String? encodeSign) => _encodeSign = encodeSign;

  Signature.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _employeeRecordId = json['employee_record_id'];
    _username = json['username'];
    _encodeSign = json['encode_sign'];
  }

}