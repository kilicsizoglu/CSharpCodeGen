// ignore_for_file: non_constant_identifier_names

import 'ParameterClass.dart';
import 'PropertInterface.dart';

class CallFunctionClass implements PropertyInterface {
  List<ParameterClass>? parameters;

  @override
  String Name = "";

  @override
  String Type = "CallFunction";

  CallFunctionClass(String name) {
    Name = name;
    parameters = [];
  }

  @override
  String Stringify() {
    StringBuffer sb = StringBuffer();
    if (parameters!.isNotEmpty) {
      for (var i = 0; i < parameters!.length; i++) {
        sb.write('$Name(${parameters![i].Stringify()});\n');
      }
    }
    return sb.toString();
  }
 
}
