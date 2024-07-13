import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:assessmenttest/List/data/models/list_response_model.dart';
import 'package:assessmenttest/List/listlogic/list_cubit.dart';
import 'package:assessmenttest/List/ui/widgets/list_view_item.dart';

class MoviesListView extends StatelessWidget {
  final List<Result?>? resultsList;

  const MoviesListView({Key? key, this.resultsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: resultsList?.length ?? 0,
      itemBuilder: (context, index) {
        return SizedBox(
          width: double.infinity, 
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h), 
            child: ListViewItems(
              resultModel: resultsList![index],
              itemindex: index,
              onTap: () => context.read<ListCubit>().handleEvent(
                ListEvent.itemSelected,
                resultsList![index]!
                
              ),
            ),
          ),
        );
      },
    );
  }
}