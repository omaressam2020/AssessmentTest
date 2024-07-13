
import 'package:assessmenttest/List/data/models/list_response_model.dart';
import 'package:assessmenttest/List/data/repos/list_repo.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_state.dart';

enum ListEvent {
  itemSelected,
}

class ListCubit extends Cubit<ListState> {
  final ListRepo _listRepo;

  ListCubit(
    this._listRepo,
  ) : super(const ListState.initial());

  void getlist() async {
    emit(const ListState.listLoaded());

    final response = await _listRepo.getlist();
    response.when(success: (listResponseModel) {
      emit(ListState.listSuccess(listResponseModel));
    }, failure: (errorHandler) {
      emit(ListState.listError(errorHandler));
    });
  }

  void searchInMovieList(String query) async {
    emit(const ListState.listLoaded());

    final response = await _listRepo.searchInMovieList(query);
    response.when(success: (listResponseModel) {
      emit(ListState.listSuccess(listResponseModel));
    }, failure: (errorHandler) {
      emit(ListState.listError(errorHandler));
    });
  }

  void handleEvent(ListEvent event, Result result) {
    switch (event) {
      case ListEvent.itemSelected:
  

        emit(ListState.itemSelected(result));
        break;
    }
  }
}
