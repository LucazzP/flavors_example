import 'package:flutter/material.dart';
import 'package:flavors_example/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/shared/config/flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    color: Colors.green,
    values: FlavorValues(
      baseUrl:
          "BaseUrl do DEV",
    ),
  );
  runApp(ModularApp(module: AppModule()));
}
