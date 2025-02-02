
import 'designation_count.dart';

class Designation {
  DesignationCount? _abc;

  Designation({DesignationCount? abc}) {
    if (abc != null) {
      _abc = abc;
    }
  }

  DesignationCount? get abc => _abc;

  set abc(DesignationCount? abc) => _abc = abc;

  Designation.fromJson(Map<String, dynamic> json, String designationId) {
    _abc = json[designationId] != null
        ? DesignationCount.fromJson(json[designationId],designationId)
        : null;
  }
}
