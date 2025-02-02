class User {
  int? _id;
  String? _username;
  String? _userAlias;
  bool? _active;
  int? _employeeRecordId;

  User(
      {int? id,
        String? username,
        String? userAlias,
        bool? active,
        int? employeeRecordId}) {
    if (id != null) {
      _id = id;
    }
    if (username != null) {
      _username = username;
    }
    if (userAlias != null) {
      _userAlias = userAlias;
    }
    if (active != null) {
      _active = active;
    }
    if (employeeRecordId != null) {
      _employeeRecordId = employeeRecordId;
    }
  }

  int? get id => _id;

  set id(int? id) => _id = id;

  String? get username => _username;

  set username(String? username) => _username = username;

  String? get userAlias => _userAlias;

  set userAlias(String? userAlias) => _userAlias = userAlias;

  bool? get active => _active;

  set active(bool? active) => _active = active;

  int? get employeeRecordId => _employeeRecordId;

  set employeeRecordId(int? employeeRecordId) =>
      _employeeRecordId = employeeRecordId;

  User.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _username = json['username'];
    _userAlias = json['user_alias'];
    _active = json['active'];
    _employeeRecordId = json['employee_record_id'];
  }
}
