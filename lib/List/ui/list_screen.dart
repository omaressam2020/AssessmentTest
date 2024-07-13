import 'package:assessmenttest/List/ui/widgets/search_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:assessmenttest/Core/helpers/spacing.dart';
import 'package:assessmenttest/List/listlogic/list_cubit.dart';
import 'package:assessmenttest/List/ui/widgets/custom_search_bar.dart';
import 'package:assessmenttest/List/ui/widgets/list_bloc_builder.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final TextEditingController _controller = TextEditingController();
 
  late SearchService _searchService;


  @override
  void initState() {
    super.initState();
    _searchService = SearchService(context.read<ListCubit>());

  }


  void _performSearch(String searchText) {
    _searchService.performSearch(searchText);
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movies",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontFamily: "Montserrat",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: listScreenBody(orientation),
    );
  }

  SafeArea listScreenBody(Orientation orientation) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: constraints.maxWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  verticalSpace(16.h),
                  CustomSearchBar(
                    controller: _controller,
                    onSearch: _performSearch,
                    orientation: orientation,
                    listCubit: context.read<ListCubit>(),
                  ),
                  verticalSpace(16.h),
                  const ListBlocBuilder(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
