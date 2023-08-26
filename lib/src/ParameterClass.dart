// ignore_for_file: non_constant_identifier_names, prefer_initializing_formals

import 'PropertInterface.dart';

class ParameterClass implements PropertyInterface {
  Map<String, String>? Parameter;

  @override
  String Name = "";

  @override
  String Type = "Parameter";

  ParameterClass(String Name) {
    this.Name = Name;
    Parameter = {};
  }

  @override
  String Stringify() {
    StringBuffer sb = StringBuffer();
    if (Parameter!.isNotEmpty) {
      var i = 0;
      for (var Key in Parameter!.keys) {
        sb.write(Key + Parameter![Key]!);
        if (++i != Parameter!.keys.length) {
          sb.write(",");
        }
      }
    }
    return sb.toString();
  }
}
