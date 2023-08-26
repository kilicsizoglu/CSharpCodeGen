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
    parameters = [];
    variables = [];
    callfunctions = [];
  }

  @override
  String Stringify() {
    StringBuffer sb = StringBuffer();
    if (parameters!.isNotEmpty) {
      sb.write('$this.Name ()\n');
    } else {
      sb.write('this.Name (${parameters!.toString()}) {\n');
    }
    
    if (variables!.isNotEmpty) {
      for (var i = 0; i < variables!.length; i++) {
        sb.write(variables![i].Stringify());
      }
    }
    if (callfunctions!.isNotEmpty) {
      for (var i = 0; i < callfunctions!.length; i++) {
        sb.write(callfunctions![i].Stringify());
      }
    }
    sb.write("\n}");
    return sb.toString();
  }
}
