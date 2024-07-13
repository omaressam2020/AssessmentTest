import 'package:assessmenttest/Core/di/dependency_injection.dart';
import 'package:assessmenttest/Core/routing/routes.dart';
import 'package:assessmenttest/Details/ui/details_screen.dart';
import 'package:assessmenttest/List/data/models/list_response_model.dart';
import 'package:assessmenttest/List/listlogic/list_cubit.dart';
import 'package:assessmenttest/List/ui/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.listScreen:
        return listRouteSetup();
      case Routes.detailsScreen:
        if (arguments is Result) {
          return detailsRouteSetup(arguments);
        }
        return null;
      default:
        return null;
    }
  }

  PageRouteBuilder<dynamic> listRouteSetup() {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => BlocProvider.value(
        value: getIt<ListCubit>()..getlist(),
        child: const ListScreen(),
      ),
   transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      
      },
    );
  }

  PageRouteBuilder<dynamic> detailsRouteSetup(Result result) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => BlocProvider.value(
        value: getIt<ListCubit>()..handleEvent(ListEvent.itemSelected, result),
        child: DetailsScreen(movieTitle: result.original_title ?? ""),
      ),
 transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      
      },
    );
  }
}


