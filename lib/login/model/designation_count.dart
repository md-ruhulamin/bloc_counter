class DesignationCount {
  int? _dak;
  int? _ownOfficeNothi;
  int? _otherOfficeNothi;
  int? _dakDraft;
  int? _sortedDak;
  String? _designationId;

  DesignationCount({
    int? dak,
    int? ownOfficeNothi,
    int? otherOfficeNothi,
    int? dakDraft,
    int? sortedDak,
    String? designationId,
  }) {
    if (dak != null) {
      _dak = dak;
    }
    if (ownOfficeNothi != null) {
      _ownOfficeNothi = ownOfficeNothi;
    }
    if (otherOfficeNothi != null) {
      _otherOfficeNothi = otherOfficeNothi;
    }
    if (dakDraft != null) {
      _dakDraft = dakDraft;
    }
    if (sortedDak != null) {
      _sortedDak = sortedDak;
    }
    if (designationId != null) {
      _designationId = designationId;
    }
  }

  int? get dak => _dak;

  set dak(int? dak) => _dak = dak;

  int? get ownOfficeNothi => _ownOfficeNothi;

  set ownOfficeNothi(int? ownOfficeNothi) => _ownOfficeNothi = ownOfficeNothi;

  int? get otherOfficeNothi => _otherOfficeNothi;

  set otherOfficeNothi(int? otherOfficeNothi) =>
      _otherOfficeNothi = otherOfficeNothi;

  int? get dakDraft => _dakDraft;

  set dakDraft(int? dakDraft) => _dakDraft = dakDraft;

  int? get sortedDak => _sortedDak;

  set sortedDak(int? sortedDak) => _sortedDak = sortedDak;

  String? get designationId => _designationId;

  set designationId(String? designationId) => _designationId = designationId;

  DesignationCount.fromJson(Map<String, dynamic> json, String designationId) {
    _dak = json['dak'];
    _ownOfficeNothi = json['own_office_nothi'];
    _otherOfficeNothi = json['other_office_nothi'];
    _dakDraft = json['dak_draft'];
    _sortedDak = json['sorted_dak'];
    _designationId = json['designationId'];
  }
}
