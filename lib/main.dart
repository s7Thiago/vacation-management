import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './src/utils/routes.dart';
import './src/ui/pages/vacations_manager_home.dart';
import './src/ui/styles/themes.dart';
import './src/core/providers/years.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => YearsProvider()),
    ], child: AppRouter());
  }
}

class AppRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.light,
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.HOME: (_) => VacationsManagerHome(),
      },
    );
  }
}
