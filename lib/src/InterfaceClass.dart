// ignore_for_file: non_constant_identifier_names, prefer_initializing_formals, unnecessary_this

import 'ClassClass.dart';
import 'EnumClass.dart';
import 'PropertInterface.dart';
import 'VariableClass.dart';

class InterfaceClass implements PropertyInterface {
  List<VariableClass>? variables;
  List<EnumClass>? enums;
  List<ClassClass>? classes;

  @override
  String Name = "";

  @override
  String Type = "Interface";

  InterfaceClass(String Name) {
    this.Name = Name;
    variables = [];
    enums = [];
    classes = [];
  }

  @override
  String Stringify() {
    StringBuffer sb = StringBuffer();
    sb.write("interface ${this.Name} { \n");
    if (enums!.isNotEmpty) {
      for(var i = 0; i < enums!.length; i++) {
        sb.write(enums![i].Stringify());
      }
    }
    if (variables!.isNotEmpty) {
      for(var i = 0; i < variables!.length; i++) {
        sb.write(variables![i].Stringify());
      }
    }
    if (classes!.isNotEmpty) {
      for(var i = 0; i < classes!.length; i++) {
        sb.write(classes![i].Stringify());
      }
    }
    sb.write("\n}");
    return sb.toString();
  }
}
