import 'dart:convert';

import 'module_count.dart';


class OfficeInfo {
  int? _id;
  int? _employeeRecordId;
  int? _officeId;
  int? _officeUnitId;
  int? _officeUnitOrganogramId;
  String? _designation;
  int? _designationLevel;
  int? _designationSequence;
  dynamic? _officeHead;
  String? _inchargeLabel;
  String? _joiningDate;
  String? _lastOfficeDate;
  int? _showUnit;
  String? _designationEn;
  String? _unitNameBn;
  String? _officeNameBn;
  String? _unitNameEn;
  String? _officeNameEn;
  int? _protikolpoStatus;
  String? _domain;
  dynamic? _isOfficeHead;
  dynamic? _isAdmin;
  dynamic? _isOfficeUnitAdmin;
  dynamic? _isOfficeUnitHead;
  String? _frontDomain;
  int? _version;
  int? _designationId;
  int? _customLayerLevel;
  int? _layerLevel;
  ModuleCount? _moduleCount;

  OfficeInfo(
      {int? id,
        int? employeeRecordId,
        int? officeId,
        int? officeUnitId,
        int? officeUnitOrganogramId,
        String? designation,
        int? designationLevel,
        int? designationSequence,
        dynamic? officeHead,
        String? inchargeLabel,
        String? joiningDate,
        String? lastOfficeDate,
        int? showUnit,
        String? designationEn,
        String? unitNameBn,
        String? officeNameBn,
        String? unitNameEn,
        String? officeNameEn,
        int? protikolpoStatus,
        String? domain,
        dynamic? isOfficeHead,
        dynamic? isAdmin,
        dynamic? isOfficeUnitAdmin,
        dynamic? isOfficeUnitHead,
        String? frontDomain,
        int? version,
        int? designationId,
        int? customLayerLevel,
        int? layerLevel,
        ModuleCount? moduleCount}) {
    if (id != null) {
      _id = id;
    }
    if (employeeRecordId != null) {
      _employeeRecordId = employeeRecordId;
    }
    if (officeId != null) {
      _officeId = officeId;
    }
    if (officeUnitId != null) {
      _officeUnitId = officeUnitId;
    }
    if (officeUnitOrganogramId != null) {
      _officeUnitOrganogramId = officeUnitOrganogramId;
    }
    if (designation != null) {
      _designation = designation;
    }
    if (designationLevel != null) {
      _designationLevel = designationLevel;
    }
    if (designationSequence != null) {
      _designationSequence = designationSequence;
    }
    if (officeHead != null) {
      _officeHead = officeHead;
    }
    if (inchargeLabel != null) {
      _inchargeLabel = inchargeLabel;
    }
    if (joiningDate != null) {
      _joiningDate = joiningDate;
    }
    if (lastOfficeDate != null) {
      _lastOfficeDate = lastOfficeDate;
    }
    if (showUnit != null) {
      _showUnit = showUnit;
    }
    if (designationEn != null) {
      _designationEn = designationEn;
    }
    if (unitNameBn != null) {
      _unitNameBn = unitNameBn;
    }
    if (officeNameBn != null) {
      _officeNameBn = officeNameBn;
    }
    if (unitNameEn != null) {
      _unitNameEn = unitNameEn;
    }
    if (officeNameEn != null) {
      _officeNameEn = officeNameEn;
    }
    if (protikolpoStatus != null) {
      _protikolpoStatus = protikolpoStatus;
    }
    if (domain != null) {
      _domain = domain;
    }
    if (frontDomain != null) {
      _frontDomain = frontDomain;
    }
    if (isOfficeUnitAdmin != null) {
      _isOfficeUnitAdmin = isOfficeUnitAdmin;
    }
    if (isOfficeHead != null) {
      _isOfficeHead = isOfficeHead;
    }
    if (isOfficeUnitHead != null) {
      _isOfficeUnitHead = isOfficeUnitHead;
    }
    if (isAdmin != null) {
      _isAdmin = isAdmin;
    }
    if (version != null) {
      _version = version;
    }
    if (designationId != null) {
      _designationId = designationId;
    }
    if (customLayerLevel != null) {
      _customLayerLevel = customLayerLevel;
    }
    if (layerLevel != null) {
      _layerLevel = layerLevel;
    }
    if (moduleCount != null) {
      _moduleCount = moduleCount;
    }
  }

  int? get id => _id;

  set id(int? id) => _id = id;

  int? get employeeRecordId => _employeeRecordId;

  set employeeRecordId(int? employeeRecordId) =>
      _employeeRecordId = employeeRecordId;

  int? get officeId => _officeId;

  set officeId(int? officeId) => _officeId = officeId;

  int? get officeUnitId => _officeUnitId;

  set officeUnitId(int? officeUnitId) => _officeUnitId = officeUnitId;

  int? get officeUnitOrganogramId => _officeUnitOrganogramId;

  set officeUnitOrganogramId(int? officeUnitOrganogramId) =>
      _officeUnitOrganogramId = officeUnitOrganogramId;

  String? get designation => _designation;

  set designation(String? designation) => _designation = designation;

  int? get designationLevel => _designationLevel;

  set designationLevel(int? designationLevel) =>
      _designationLevel = designationLevel;

  int? get designationSequence => _designationSequence;

  set designationSequence(int? designationSequence) =>
      _designationSequence = designationSequence;

  dynamic? get officeHead => _officeHead;

  set officeHead(dynamic? officeHead) => _officeHead = officeHead;

  String? get inchargeLabel => _inchargeLabel;

  set inchargeLabel(String? inchargeLabel) => _inchargeLabel = inchargeLabel;

  String? get joiningDate => _joiningDate;

  set joiningDate(String? joiningDate) => _joiningDate = joiningDate;

  String? get lastOfficeDate => _lastOfficeDate;

  set lastOfficeDate(String? lastOfficeDate) =>
      _lastOfficeDate = lastOfficeDate;

  int? get showUnit => _showUnit;

  set showUnit(int? showUnit) => _showUnit = showUnit;

  String? get designationEn => _designationEn;

  set designationEn(String? designationEn) => _designationEn = designationEn;

  String? get unitNameBn => _unitNameBn;

  set unitNameBn(String? unitNameBn) => _unitNameBn = unitNameBn;

  String? get officeNameBn => _officeNameBn;

  set officeNameBn(String? officeNameBn) => _officeNameBn = officeNameBn;

  String? get unitNameEn => _unitNameEn;

  set unitNameEn(String? unitNameEn) => _unitNameEn = unitNameEn;

  String? get officeNameEn => _officeNameEn;

  set officeNameEn(String? officeNameEn) => _officeNameEn = officeNameEn;

  int? get protikolpoStatus => _protikolpoStatus;

  set protikolpoStatus(int? protikolpoStatus) =>
      _protikolpoStatus = protikolpoStatus;

  String? get domain => _domain;

  set domain(String? domain) => _domain = domain;

  String? get frontDomain => _frontDomain;

  set frontDomain(String? frontDomain) => _frontDomain = frontDomain;

  dynamic? get isAdmin => _isAdmin;

  set isAdmin(dynamic? isAdmin) => _isAdmin = isAdmin;

  dynamic? get isOfficeUnitAdmin => _isOfficeUnitAdmin;

  set isOfficeUnitAdmin(dynamic? isOfficeUnitAdmin) =>
      _isOfficeUnitAdmin = isOfficeUnitAdmin;

  dynamic? get isOfficeHead => _isOfficeHead;

  set isOfficeHead(dynamic? isOfficeHead) => _isOfficeHead = isOfficeHead;

  dynamic? get isOfficeUnitHead => _isOfficeUnitHead;

  set isOfficeUnitHead(dynamic? isOfficeUnitHead) =>
      _isOfficeUnitHead = isOfficeUnitHead;

  int? get version => _version;

  set version(int? version) => _version = version;

  int? get designationId => _designationId;

  set designationId(int? designationId) => _designationId = designationId;

  int? get customLayerLevel => _customLayerLevel;

  set customLayerLevel(int? customLayerLevel) =>
      _customLayerLevel = customLayerLevel;

  int? get layerLevel => _layerLevel;

  set layerLevel(int? layerLevel) => _layerLevel = layerLevel;

  ModuleCount? get moduleCount => _moduleCount;

  set moduleCount(ModuleCount? moduleCount) => _moduleCount = moduleCount;

  OfficeInfo.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _employeeRecordId = json['employee_record_id'];
    _officeId = json['office_id'];
    _officeUnitId = json['office_unit_id'];
    _officeUnitOrganogramId = json['office_unit_organogram_id'];
    _designation = json['designation'];
    _designationLevel = json['designation_level'];
    _designationSequence = json['designation_sequence'];
    _officeHead = json['office_head'];
    _inchargeLabel = json['incharge_label'];
    _joiningDate = json['joining_date'];
    _lastOfficeDate = json['last_office_date'];
    _showUnit = json['show_unit'];
    _designationEn = json['designation_en'];
    _unitNameBn = json['unit_name_bn'];
    _officeNameBn = json['office_name_bn'];
    _unitNameEn = json['unit_name_en'];
    _officeNameEn = json['office_name_en'];
    _protikolpoStatus = json['protikolpo_status'];
    _domain = json['domain'];
    _isAdmin = json['is_admin'];
    _isOfficeUnitAdmin = json['is_office_unit_admin'];
    _isOfficeHead = json['is_office_head'];
    _isOfficeUnitHead = json['is_office_unit_head'];
    _frontDomain = json['front_domain'];
    _version = json['version'];
    _designationId = json['designation_id'];
    _customLayerLevel = json['custom_layer_level'];
    _layerLevel = json['layer_level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = _id;
    data['employee_record_id'] = _employeeRecordId;
    data['office_id'] = _officeId;
    data['office_unit_id'] = _officeUnitId;
    data['office_unit_organogram_id'] = _officeUnitOrganogramId;
    data['designation'] = _designation;
    data['designation_level'] = _designationLevel;
    data['designation_sequence'] = _designationSequence;
    data['office_head'] = _officeHead;
    data['incharge_label'] = _inchargeLabel;
    data['joining_date'] = _joiningDate;
    data['last_office_date'] = _lastOfficeDate;
    data['show_unit'] = _showUnit;
    data['designation_en'] = _designationEn;
    data['unit_name_bn'] = _unitNameBn;
    data['office_name_bn'] = _officeNameBn;
    data['unit_name_en'] = _unitNameEn;
    data['office_name_en'] = _officeNameEn;
    data['protikolpo_status'] = _protikolpoStatus;
    data['domain'] = _domain;
    data['is_admin'] = _isAdmin;
    data['is_office_unit_admin'] = _isOfficeUnitAdmin;
    data['is_office_head'] = _isOfficeHead;
    data['is_office_unit_head'] = _isOfficeUnitHead;
    data['front_domain'] = _frontDomain;
    data['version'] = _version;
    data['designation_id'] = _designationId;
    data['custom_layer_level'] = _customLayerLevel;
    data['layer_level'] = _layerLevel;
    return data;
  }

  static String encode(List<OfficeInfo> officeList) => jsonEncode(
    officeList
        .map<Map<String, dynamic>>((office) => office.toJson())
        .toList(),
  );

  static List<OfficeInfo> decode(String office) =>
      (json.decode(office) as List<dynamic>)
          .map<OfficeInfo>((item) => OfficeInfo.fromJson(item))
          .toList();
}
