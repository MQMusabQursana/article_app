import 'package:article_app/features/articles/data/models/article_model.dart';
import 'package:article_app/features/articles/data/models/media_metadata_model.dart';
import 'package:article_app/features/articles/data/models/media_model.dart';
import 'package:article_app/features/articles/presentation/pages/article_list/article_details.dart';
import 'package:article_app/features/config/theme/colors.dart';
import 'package:article_app/features/core/componts/circle_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleTile extends StatelessWidget {
  ArticleModel articleModel;

  ArticleTile({required this.articleModel});

  @override
  Widget build(BuildContext context) {
    String imageUrl = "";
    final media = (articleModel.media ?? [const MediaModel()]);
    if (media.isNotEmpty) {
      final mediaMetadata = (media.first!.mediaMetadata ?? [const MediaMetadataModel()]);
      if (mediaMetadata.isNotEmpty) {
        imageUrl = mediaMetadata.first!.url ?? "";
      }
    }
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      child: CupertinoButton(
        minSize: 0,
        padding: EdgeInsets.zero,
        onPressed: () {
          context.pushNamed(ArticleDetailsPage.name, extra: articleModel);
        },
        child: Hero(
          tag: "image",
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
            color: whiteColor,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration:
                  BoxDecoration(color: whiteColor, borderRadius: BorderRadius.circular(10.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleImage(
                    url: imageUrl,
                    size: 50.r,
                    isClickable: false,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        articleModel.title ?? "-",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.sp, color: blackColor),
                      ),
                      Text(articleModel.byline ?? "-",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12.sp, color: blackColor)),
                      Row(
                        children: [
                          Expanded(
                              child: Text(articleModel.section ?? "-",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: greyColor))),
                          Expanded(
                              child: Text(articleModel.publishedDate ?? "-",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: greyColor))),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
