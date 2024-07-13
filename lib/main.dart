import 'package:assessmenttest/Core/di/dependency_injection.dart';
import 'package:assessmenttest/Core/routing/app_router.dart';
import 'package:assessmenttest/assesment_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIT();
  runApp(Assesmentapp(
    appRouter: AppRouter(),
  ));
}
