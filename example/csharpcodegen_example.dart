
// ignore_for_file: unnecessary_import, unnecessary_new, prefer_collection_literals, unused_local_variable

import 'package:csharpcodegen/csharpcodegen.dart';
import 'package:csharpcodegen/src/InterfaceClass.dart';

void main() {
  InterfaceClass ic = new InterfaceClass("tryinterface");

  ClassClass cc = new ClassClass("tryclass");
  

  CallFunctionClass cfc = new CallFunctionClass("asd");

  ParameterClass pc = new ParameterClass("asd");
  pc.Parameter!.addAll({ "String":"variable1" });

  cfc.parameters!.add(pc);

  cc.callfunction!.add(cfc);

  ic.classes!.add(cc);

  print(ic.Stringify());
}
