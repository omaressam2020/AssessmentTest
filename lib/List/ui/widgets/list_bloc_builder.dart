import 'package:assessmenttest/Core/helpers/extentions.dart';
import 'package:assessmenttest/Core/helpers/spacing.dart';
import 'package:assessmenttest/Core/routing/routes.dart';
import 'package:assessmenttest/List/data/models/list_response_model.dart';
import 'package:assessmenttest/List/listlogic/list_cubit.dart';
import 'package:assessmenttest/List/listlogic/list_state.dart';
import 'package:assessmenttest/List/ui/widgets/list_header.dart';
import 'package:assessmenttest/List/ui/widgets/loading_dailog.dart';
import 'package:assessmenttest/List/ui/widgets/movies_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListBlocBuilder extends StatelessWidget {
  const ListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListCubit, ListState>(
      buildWhen: (pervious, current) =>
          current is ListLoaded ||
          current is ListSuccess ||
          current is ItemSelectedState ||
          current is ListError,
      builder: (context, state) {
        return state.maybeWhen(listLoaded: () {
          return setupLoading();
        }, listSuccess: (listResponseModel) {
          return setupSuccess(listResponseModel);
        }, listError: (errorHandler) {
          return const NoData();
        }, itemSelected: (result) {
          return setupItemSelected(context, result);
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }

  LoadingDailog setupLoading() {
    return const LoadingDailog(text: "Loading...", btntext: "Please wait...'");
  }

  Widget setupItemSelected(BuildContext context, Result result) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.pushNamed( Routes.detailsScreen, arguments: result);
    });
    return const SizedBox.shrink();
  }

  Widget setupSuccess(ListResponseModel listResponseModel) {
    return Column(
      children: [
        const ListHeader(),
        verticalSpace(8.h),
        MoviesListView(
          resultsList: listResponseModel.results ?? [],
        ),
      ],
    );
  }
}

class NoData extends StatelessWidget {
  const NoData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/nodata.png',
        width: 300.w,
        height: 300.h,
        fit: BoxFit.fill,
      ),
    );
  }
}
