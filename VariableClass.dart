import 'PropertInterface.dart';

class VariableClass implements PropertyInterface {
  String? value;

  @override
  String Name = "";

  @override
  String Type = "Variable";

  VariableClass(String Name) {
    this.Name = Name;
  }

  @override
  String ToString() {
    StringBuffer sb = StringBuffer();
    if (this.value != null) {
      sb.write(this.Name + " = " + this.value! + ";\n");
    }
    return sb.toString();
  }
}
