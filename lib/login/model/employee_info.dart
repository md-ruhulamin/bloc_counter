class EmployeeInfo {
  int? _id;
  String? _nameEng;
  String? _nameBng;
  String? _fatherNameEng;
  String? _fatherNameBng;
  String? _motherNameEng;
  String? _motherNameBng;
  String? _dateOfBirth;
  String? _nid;
  String? _bcn;
  String? _ppn;
  String? _gender;
  String? _religion;
  String? _bloodGroup;
  String? _maritalStatus;
  String? _personalEmail;
  String? _personalMobile;
  String? _alternativeMobile;
  int? _isCadre;
  int? _defaultSign;
  int? _reportPermission;

  EmployeeInfo(
      {int? id,
        String? nameEng,
        String? nameBng,
        String? fatherNameEng,
        String? fatherNameBng,
        String? motherNameEng,
        String? motherNameBng,
        String? dateOfBirth,
        String? nid,
        String? bcn,
        String? ppn,
        String? gender,
        String? religion,
        String? bloodGroup,
        String? maritalStatus,
        String? personalEmail,
        String? personalMobile,
        String? alternativeMobile,
        int? isCadre,
        int? defaultSign,
        int? reportPermission}) {
    if (id != null) {
      _id = id;
    }
    if (nameEng != null) {
      _nameEng = nameEng;
    }
    if (nameBng != null) {
      _nameBng = nameBng;
    }
    if (fatherNameEng != null) {
      _fatherNameEng = fatherNameEng;
    }
    if (fatherNameBng != null) {
      _fatherNameBng = fatherNameBng;
    }
    if (motherNameEng != null) {
      _motherNameEng = motherNameEng;
    }
    if (motherNameBng != null) {
      _motherNameBng = motherNameBng;
    }
    if (dateOfBirth != null) {
      _dateOfBirth = dateOfBirth;
    }
    if (nid != null) {
      _nid = nid;
    }
    if (bcn != null) {
      _bcn = bcn;
    }
    if (ppn != null) {
      _ppn = ppn;
    }
    if (gender != null) {
      _gender = gender;
    }
    if (religion != null) {
      _religion = religion;
    }
    if (bloodGroup != null) {
      _bloodGroup = bloodGroup;
    }
    if (maritalStatus != null) {
      _maritalStatus = maritalStatus;
    }
    if (personalEmail != null) {
      _personalEmail = personalEmail;
    }
    if (personalMobile != null) {
      _personalMobile = personalMobile;
    }
    if (alternativeMobile != null) {
      _alternativeMobile = alternativeMobile;
    }
    if (isCadre != null) {
      _isCadre = isCadre;
    }
    if (defaultSign != null) {
      _defaultSign = defaultSign;
    }
    if (reportPermission != null) {
      _reportPermission = reportPermission;
    }
  }

  int? get id => _id;

  set id(int? id) => _id = id;

  String? get nameEng => _nameEng;

  set nameEng(String? nameEng) => _nameEng = nameEng;

  String? get nameBng => _nameBng;

  set nameBng(String? nameBng) => _nameBng = nameBng;

  String? get fatherNameEng => _fatherNameEng;

  set fatherNameEng(String? fatherNameEng) => _fatherNameEng = fatherNameEng;

  String? get fatherNameBng => _fatherNameBng;

  set fatherNameBng(String? fatherNameBng) => _fatherNameBng = fatherNameBng;

  String? get motherNameEng => _motherNameEng;

  set motherNameEng(String? motherNameEng) => _motherNameEng = motherNameEng;

  String? get motherNameBng => _motherNameBng;

  set motherNameBng(String? motherNameBng) => _motherNameBng = motherNameBng;

  String? get dateOfBirth => _dateOfBirth;

  set dateOfBirth(String? dateOfBirth) => _dateOfBirth = dateOfBirth;

  String? get nid => _nid;

  set nid(String? nid) => _nid = nid;

  String? get bcn => _bcn;

  set bcn(String? bcn) => _bcn = bcn;

  String? get ppn => _ppn;

  set ppn(String? ppn) => _ppn = ppn;

  String? get gender => _gender;

  set gender(String? gender) => _gender = gender;

  String? get religion => _religion;

  set religion(String? religion) => _religion = religion;

  String? get bloodGroup => _bloodGroup;

  set bloodGroup(String? bloodGroup) => _bloodGroup = bloodGroup;

  String? get maritalStatus => _maritalStatus;

  set maritalStatus(String? maritalStatus) => _maritalStatus = maritalStatus;

  String? get personalEmail => _personalEmail;

  set personalEmail(String? personalEmail) => _personalEmail = personalEmail;

  String? get personalMobile => _personalMobile;

  set personalMobile(String? personalMobile) =>
      _personalMobile = personalMobile;

  String? get alternativeMobile => _alternativeMobile;

  set alternativeMobile(String? alternativeMobile) =>
      _alternativeMobile = alternativeMobile;

  int? get isCadre => _isCadre;

  set isCadre(int? isCadre) => _isCadre = isCadre;

  int? get defaultSign => _defaultSign;

  set defaultSign(int? defaultSign) => _defaultSign = defaultSign;

  int? get reportPermission => _reportPermission;

  set reportPermission(int? reportPermission) =>
      _reportPermission = reportPermission;

  EmployeeInfo.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _nameEng = json['name_eng'];
    _nameBng = json['name_bng'];
    _fatherNameEng = json['father_name_eng'];
    _fatherNameBng = json['father_name_bng'];
    _motherNameEng = json['mother_name_eng'];
    _motherNameBng = json['mother_name_bng'];
    _dateOfBirth = json['date_of_birth'];
    _nid = json['nid'];
    _bcn = json['bcn'];
    _ppn = json['ppn'];
    _gender = json['gender'];
    _religion = json['religion'];
    _bloodGroup = json['blood_group'];
    _maritalStatus = json['marital_status'];
    _personalEmail = json['personal_email'];
    _personalMobile = json['personal_mobile'];
    _alternativeMobile = json['alternative_mobile'];
    _isCadre = json['is_cadre'];
    _defaultSign = json['default_sign'];
    _reportPermission = json['report_permission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = _id;
    data['name_eng'] = _nameEng;
    data['name_bng'] = _nameBng;
    data['father_name_eng'] = _fatherNameEng;
    data['father_name_bng'] = _fatherNameBng;
    data['mother_name_eng'] = _motherNameEng;
    data['mother_name_bng'] = _motherNameBng;
    data['date_of_birth'] = _dateOfBirth;
    data['nid'] = _nid;
    data['bcn'] = _bcn;
    data['ppn'] = _ppn;
    data['gender'] = this._gender;
    data['religion'] = this._religion;
    data['blood_group'] = this._bloodGroup;
    data['marital_status'] = this._maritalStatus;
    data['personal_email'] = _personalEmail;
    data['personal_mobile'] = _personalMobile;
    data['alternative_mobile'] = this._alternativeMobile;
    data['is_cadre'] = _isCadre;
    data['default_sign'] = _defaultSign;
    data['report_permission'] = _reportPermission;
    return data;
  }
}
