


import 'package:bloc_counter/login/model/signature.dart';
import 'package:bloc_counter/login/model/user.dart';

import 'employee_info.dart';
import 'office_info.dart';

class UserLogin {
  String? _status;
  String? _message;
  UserLoginData? _data;

  UserLogin({String? status, UserLoginData? data}) {
    if (status != null) {
      _status = status;
    }
    if (data != null) {
      _data = data;
    }
  }

  String? get status => _status;
  set status(String? status) => _status = status;
  String? get message => _message;
  set message(String? message) => _message = message;
  UserLoginData? get data => _data;
  set data(UserLoginData? data) => _data = data;

  UserLogin.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? UserLoginData.fromJson(json['data']) : null;
  }


}

class UserLoginData {
  User? _user;
  EmployeeInfo? _employeeInfo;
  List<OfficeInfo>? _officeInfo;
  String? _token;
  Signature? _signature;
  String? _profilePhoto;
  int? _officeSync;

  UserLoginData(
      {User? user,
        EmployeeInfo? employeeInfo,
        List<OfficeInfo>? officeInfo,
        String? token,
        Signature? signature,
        String? profilePhoto,
        int? officeSync}) {
    if (user != null) {
      _user = user;
    }
    if (employeeInfo != null) {
      _employeeInfo = employeeInfo;
    }
    if (officeInfo != null) {
      _officeInfo = officeInfo;
    }
    if (token != null) {
      _token = token;
    }
    if (signature != null) {
      _signature = signature;
    }
    if (profilePhoto != null) {
      _profilePhoto = profilePhoto;
    }
    if (officeSync != null) {
      _officeSync = officeSync;
    }
  }

  User? get user => _user;
  set user(User? user) => _user = user;
  EmployeeInfo? get employeeInfo => _employeeInfo;
  set employeeInfo(EmployeeInfo? employeeInfo) => _employeeInfo = employeeInfo;
  List<OfficeInfo>? get officeInfo => _officeInfo;
  set officeInfo(List<OfficeInfo>? officeInfo) => _officeInfo = officeInfo;
  String? get token => _token;
  set token(String? token) => _token = token;
  Signature? get signature => _signature;
  set signature(Signature? signature) => _signature = signature;
  String? get profilePhoto => _profilePhoto;
  set profilePhoto(String? profilePhoto) => _profilePhoto = profilePhoto;
  int? get officeSync => _officeSync;
  set officeSync(int? officeSync) => _officeSync = officeSync;

  UserLoginData.fromJson(Map<String, dynamic> json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _employeeInfo = json['employee_info'] != null
        ? EmployeeInfo.fromJson(json['employee_info'])
        : null;
    if (json['office_info'] != null) {
      _officeInfo = <OfficeInfo>[];
      json['office_info'].forEach((v) {
        _officeInfo!.add(OfficeInfo.fromJson(v));
      });
    }
    _token = json['token'];
    _signature = json['signature'] != null
        ? Signature.fromJson(json['signature'])
        : null;
    _profilePhoto = json['profile_photo'];
    _officeSync = json['office_sync'];
  }


}






