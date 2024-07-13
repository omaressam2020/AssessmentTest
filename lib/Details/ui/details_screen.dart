import 'package:assessmenttest/Core/helpers/extentions.dart';
import 'package:assessmenttest/Core/helpers/spacing.dart';
import 'package:assessmenttest/List/data/models/list_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:assessmenttest/List/listlogic/list_cubit.dart';
import 'package:assessmenttest/List/listlogic/list_state.dart';
import 'package:assessmenttest/Details/ui/widgets/count.dart';

class DetailsScreen extends StatelessWidget {
  final String movieTitle;

  // Constructor
  DetailsScreen({
    super.key,
    required this.movieTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            movieTitle,
            style:
                const TextStyle(color: Colors.white, fontFamily: "Montserrat"),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
          
              context.pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: PopScope(
          onPopInvoked: (value) {
            context.read<ListCubit>().getlist();
          },
          child: SingleChildScrollView(
            // padding: EdgeInsets.all(16.0),
            child: BlocBuilder<ListCubit, ListState>(
              builder: (context, state) {
                if (state is ItemSelectedState) {
                  return SetupItemSelected(result: state.result);
                } else {
                  return Center(
                    child: Image.asset(
                      'assets/nodata.png',
                      width: double.infinity,
                      height: 350.h,
                      fit: BoxFit.cover,
                    ),
                  );
                }
              },
            ),
          ),
        ));
  }
}

class SetupItemSelected extends StatelessWidget {
  final Result result;

  const SetupItemSelected({
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0)),
            child: Image.network(
              result.poster_path != null
                  ? "https://image.tmdb.org/t/p/w500${result.backdrop_path}"
                  : "https://via.placeholder.com/150",
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        verticalSpace( 16.0.h),

        // Movie Title and Rating
        Center(
          child: Column(
            children: [
              Text(
                result.title ?? '',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 24.0),
                  SizedBox(width: 8.w),
                  Text(
                    '${result.vote_average!.toStringAsFixed(2)}/10',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
       verticalSpace( 16.0.h),

        // Overview
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Overview',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                result.overview ?? 'No description available',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.grey,
                  fontFamily: "Montserrat",
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
       verticalSpace( 16.0.h),

        // Release Date and Runtime
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Release Date: ${result.release_date ?? 'Unknown'}',
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: "Montserrat",
            ),
          ),
        ),
      verticalSpace( 16.0.h),

        // Voting number
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Voting number',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                ),
              ),
               verticalSpace( 8.h),
              Count(count: result.vote_count.toString()),
            ],
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
