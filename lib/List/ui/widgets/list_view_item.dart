import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:assessmenttest/List/data/models/list_response_model.dart';

class ListViewItems extends StatelessWidget {
  final Result? resultModel;
  final int? itemindex;
  final void Function()? onTap;

  const ListViewItems({
    Key? key,
    this.resultModel,
    this.itemindex,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset:const Offset(0, 3), 
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  width: 120.w,
                  height: 120.h,
                  fit: BoxFit.cover,
                  imageUrl: resultModel!.poster_path != null
                      ? "https://image.tmdb.org/t/p/w500${resultModel!.poster_path}"
                      : "https://via.placeholder.com/150",
                  placeholder: (context, url) =>const CupertinoActivityIndicator(
                    radius: 20,
                    color: Colors.black,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )),
     
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    resultModel?.original_title ?? "Movie Title",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    resultModel?.overview ?? "No description available",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 11.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Release Date: ${resultModel?.release_date ?? 'Unknown'}",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 10.sp,
                          color: Colors.grey[500],
                        ),
                      ),
                      Text(
                        "Rating: ${(resultModel?.vote_average)!.toStringAsFixed(2) }",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 10.sp,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
