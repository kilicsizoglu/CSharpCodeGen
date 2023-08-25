import 'PropertInterface.dart';

class ParameterClass implements PropertyInterface {
  Map<String, String>? Parameter;

  @override
  String Name = "";

  @override
  String Type = "Parameter";

  ParameterClass(String Name) {
    this.Name = Name;
  }

  @override
  String ToString() {
    StringBuffer sb = StringBuffer();
    if (Parameter != null) {
      var i = 0;
      for (var Key in Parameter!.keys) {
        sb.write(Key + Parameter![Key]!);
        if (i++ != Parameter!.keys.length) {
          sb.write(",");
        }
      }
    }
    return sb.toString();
  }
}
