import 'package:assessmenttest/Core/routing/app_router.dart';
import 'package:assessmenttest/Core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Assesmentapp extends StatelessWidget {
  final AppRouter appRouter;
  const Assesmentapp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.7, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Assesment Test App",
        theme: ThemeData(
          primaryColor: Colors.grey,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.listScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
