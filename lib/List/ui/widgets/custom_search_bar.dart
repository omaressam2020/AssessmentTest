


import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:assessmenttest/List/listlogic/list_cubit.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSearch;
  final Orientation orientation;
    final ListCubit listCubit;

      Timer? _debounceTimer; 

  CustomSearchBar({super.key, 
    required this.controller,
    required this.onSearch,
    required this.orientation, required this.listCubit,
  });

  @override
  Widget build(BuildContext context) {
    return setupSearch();
  }

  Container setupSearch() {
    return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(0, 1), 
        ),
      ],
    ),
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            style: TextStyle(fontSize: 18.sp),
            controller: controller,
            decoration: InputDecoration(
              hintText: orientation == Orientation.portrait
                  ? 'Search...'
                  : 'Search ...........................................',
              hintStyle: TextStyle(
                fontSize: 18.sp,
                color: Colors.grey,
                fontFamily: "Montserrat",
              ),
              border: InputBorder.none,
            ),
            onChanged: (value) {
              // Cancel previous timer to debounce correctly
              _debounceTimer?.cancel();
              // Start new timer to debounce the onSearch function
              _debounceTimer = Timer(const Duration(milliseconds: 2000), () {
                onSearch(value);
              });
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
           controller.text.isNotEmpty
            ?
            onSearch(controller.text):  (){};
          },
        ),
        controller.text.isEmpty
            ? const SizedBox.shrink()
            : IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
   
            controller.clear();
            _debounceTimer?.cancel(); 
            onSearch('');
            listCubit.getlist();
          },
        ),
      ],
    ),
  );
  }
}
