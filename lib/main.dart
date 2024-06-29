import 'package:flutter/material.dart';
import 'package:supreox/core/dependency_injection/dependency_injection.dart' as di;
import 'package:supreox/application/app.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const SupreoxApp());
}

