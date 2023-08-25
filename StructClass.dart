import 'PropertInterface.dart';
import 'VariableClass.dart';

class StructClass implements PropertyInterface {
  List<VariableClass>? variables;

  @override
  String Name = "";

  @override
  String Type = "Struct";

  StructClass() {
    this.Name = Name;
  }

  @override
  String ToString() {
    StringBuffer sb = StringBuffer();
    sb.write("struct " + this.Name + " {\n");
    sb.write(variables.toString());
    sb.write("\n}");
    return "";
  }
}
