import 'FunctionClass.dart';
import 'PropertInterface.dart';
import 'VariableClass.dart';

class ClassClass implements PropertyInterface {
  List<VariableClass>? variables;
  List<FunctionClass>? functions;

  @override
  String Name = "";

  @override
  String Type = "Class";

  Class(String Name) {
    this.Name = Name;
  }

  @override
  String ToString() {
    StringBuffer sb = StringBuffer();
    sb.write("class " + this.Name + " {\n");
    if (variables != null) {
      variables.toString();
    }
    if (functions != null) {
      variables.toString();
    }
    sb.write("/n}");
    return "";
  }
}
