
import 'designation.dart';
import 'designation_count.dart';

class ModuleCount {
  String? _status;
  String? _message;
  Data? _data;

  ModuleCount({String? status,String? message, Data? data}) {
    if (status != null) {
      _status = status;
    } if (message != null) {
      _message = message;
    }
    if (data != null) {
      _data = data;
    }
  }

  String? get status => _status;

  set status(String? status) => _status = status; String? get message => _message;

  set message(String? message) => _message = message;

  Data? get data => _data;

  set data(Data? data) => _data = data;

  ModuleCount.fromJson(Map<String, dynamic> json, String designation) {
    _status = json['status'];
    _message = json['message'];
    _data =
    json['data'] != null ? Data.fromJson(json['data'], designation) : null;
  }
}

class Data {
  Designation? _designation;
  DesignationCount? _total;

  Data({Designation? designation, DesignationCount? total}) {
    if (designation != null) {
      _designation = designation;
    }
    if (total != null) {
      _total = total;
    }
  }

  Designation? get designation => _designation;

  set designation(Designation? designation) => _designation = designation;

  DesignationCount? get total => _total;

  set total(DesignationCount? total) => _total = total;

  Data.fromJson(Map<String, dynamic> json, String designation) {
    _designation = json['designation'] != null
        ? Designation.fromJson(json['designation'], designation)
        : null;
    _total = json['total'] != null
        ? DesignationCount.fromJson(json['total'], designation)
        : null;
  }
}
