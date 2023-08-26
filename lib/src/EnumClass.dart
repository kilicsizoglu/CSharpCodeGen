// ignore_for_file: non_constant_identifier_names, prefer_initializing_formals, unnecessary_this, prefer_interpolation_to_compose_strings

import 'PropertInterface.dart';

class EnumClass implements PropertyInterface {
  Map<String, int>? values;

  @override
  String Name = "";

  @override
  String Type = "Enum";

  EnumClass(String Name) {
    this.Name = Name;
    values = {};
  }

  @override
  String Stringify() {
    StringBuffer sb = StringBuffer();
    sb.write('enum  $this.Name {\n');
    if (values!.isNotEmpty) {
      for (var key in values!.keys) {
        sb.write('$key  $values![key]');
      }
    }
    sb.write("\n}");
    return "";
}
}