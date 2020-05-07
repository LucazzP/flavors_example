import 'package:flutter/material.dart';
import 'package:flavors_example/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/shared/config/flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.qa,
    color: Colors.deepPurpleAccent,
    values: FlavorValues(
      baseUrl:
          "BaseUrl do QA",
    ),
  );
  runApp(ModularApp(module: AppModule()));
}
