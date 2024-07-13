import 'package:assessmenttest/List/listlogic/list_cubit.dart';

class SearchService {
  final ListCubit listCubit;

  SearchService(this.listCubit);

  void performSearch(String searchText) {
    listCubit.searchInMovieList(searchText);
  }
}
