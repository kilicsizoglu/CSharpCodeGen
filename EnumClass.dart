import 'PropertInterface.dart';

class EnumClass implements PropertyInterface {
  Map<String, int>? values;

  @override
  String Name = "";

  @override
  String Type = "Enum";

  EnumClass(String Name) {
    this.Name = Name;
  }

  @override
  String ToString() {
    StringBuffer sb = StringBuffer();
    sb.write("enum " + this.Name + " {\n");
    if (values != null) {
      values.toString();
    }
    sb.write("\n}");
    return "";
  }
}
