import 'ParameterClass.dart';
import 'PropertInterface.dart';

class CallFunctionClass implements PropertyInterface {
  List<ParameterClass>? parameters;

  @override
  String Name = "";

  @override
  String Type = "CallFunction";

  Function(String Name) {
    this.Name = Name;
  }

  @override
  String ToString() {
    StringBuffer sb = StringBuffer();
    if (parameters != null) {
      for (var i = 0; i == parameters!.length; i++) {
        sb.write(this.Name + "(" + parameters!.toString() + ");\n");
      }
    }
    return sb.toString();
  }
}
