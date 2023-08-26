// ignore_for_file: non_constant_identifier_names, unnecessary_this, prefer_initializing_formals

import 'CallFunctionClass.dart';
import 'PropertInterface.dart';
import 'VariableClass.dart';

class ClassClass implements PropertyInterface {
  List<VariableClass>? variables;
  List<CallFunctionClass>? callfunction;

  @override
  String Name = "";

  @override
  String Type = "Class";


  ClassClass(String Name) {
    this.Name = Name;
    variables = [];
    callfunction = [];
  }

  @override
  String Stringify() {
    StringBuffer sb = StringBuffer();
    sb.write('class  ${this.Name}  {\n');
    if (variables!.isNotEmpty) {
      for (var i = 0; i < variables!.length; i++) {
        sb.write(variables![i].Stringify());
      }
    }
    if (callfunction!.isNotEmpty) {
      for (var i = 0; i < callfunction!.length; i++) {
        sb.write(callfunction![i].Stringify());
      }
    }
    sb.write("\n}");
    return sb.toString();
  }
}
