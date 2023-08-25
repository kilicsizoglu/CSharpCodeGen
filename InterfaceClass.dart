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
  }

  @override
  String ToString() {
    StringBuffer sb = StringBuffer();
    sb.write("interface " + this.Name + " { \n");
    if (enums != null) {
      sb.write(enums.toString());
    }
    if (variables != null) {
      sb.write(variables.toString());
    }
    if (classes != null) {
      sb.write(classes.toString());
    }
    sb.write("\n}");
    return sb.toString();
  }
}
