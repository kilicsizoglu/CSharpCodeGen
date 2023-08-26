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
    variables = [];
  }

  @override
  String Stringify() {
    StringBuffer sb = StringBuffer();
    sb.write('struct $this.Name {\n');
    if (variables!.isNotEmpty) {
      for(var i = 0; i < variables!.length; i++) {
        variables![i].Stringify();
      }
    } 
    sb.write("\n}");
    return "";
  }
}
