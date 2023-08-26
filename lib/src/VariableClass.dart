// ignore_for_file: unnecessary_this, prefer_interpolation_to_compose_strings, non_constant_identifier_names, prefer_initializing_formals

import 'PropertInterface.dart';

class VariableClass implements PropertyInterface {
  String? value;

  @override
  String Name = "";

  @override
  String Type = "Variable";

  VariableClass(String Name) {
    this.Name = Name;
    value = "";
  }

  @override
  String Stringify() {
    StringBuffer sb = StringBuffer();
    if (this.value!.isNotEmpty) {
      sb.write('this.Name =  $this.value;\n');
    }
    return sb.toString();
  }
}
