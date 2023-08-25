import 'CallFunctionClass.dart';
import 'ParameterClass.dart';
import 'PropertInterface.dart';
import 'VariableClass.dart';

class FunctionClass implements PropertyInterface {
  List<ParameterClass>? parameters;
  List<VariableClass>? variables;
  List<CallFunctionClass>? callfunctions;

  @override
  String Name = "";

  @override
  String Type = "Function";

  FunctionClass(String Name) {
    this.Name = Name;
  }

  @override
  String ToString() {
    StringBuffer sb = StringBuffer();
    if (parameters!.isEmpty) {
      sb.write(this.Name + "()\n");
    } else {
      sb.write(this.Name + "(" + parameters!.toString() + ") {\n");
    }
    if (variables!.isEmpty) {
      sb.write(variables!.toString());
    }
    if (callfunctions!.isEmpty) {
      sb.write(callfunctions!.toString());
    }
    sb.write("\n}");
    return sb.toString();
  }
}
