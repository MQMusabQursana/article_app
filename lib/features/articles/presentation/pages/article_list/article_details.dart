import 'package:article_app/features/articles/data/models/article_model.dart';
import 'package:article_app/features/articles/data/models/media_metadata_model.dart';
import 'package:article_app/features/articles/data/models/media_model.dart';
import 'package:article_app/features/articles/presentation/widgets/section_info.dart';
import 'package:article_app/features/config/theme/colors.dart';
import 'package:article_app/features/core/componts/square_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleDetailsPage extends StatelessWidget {
  ArticleModel articleModel;
  ArticleDetailsPage({super.key, required this.articleModel});

  static const path = "details";
  static const name = "article-details-page";

  @override
  Widget build(BuildContext context) {
    String imageUrl = "";
    final media = (articleModel.media ?? [const MediaModel()]);
    if (media.isNotEmpty) {
      final mediaMetadata = (media.last!.mediaMetadata ?? [const MediaMetadataModel()]);
      if (mediaMetadata.isNotEmpty) {
        imageUrl = mediaMetadata.last!.url ?? "";
      }
    }
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            expandedHeight: 250.h,
            flexibleSpace: Stack(
              children: [
                Hero(
                  tag: "image",
                  child: SquareImage(
                    url: imageUrl,
                    width: double.infinity,
                    height: double.infinity,
                    isClickable: true,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(color: primaryColor.withOpacity(.8)),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: Text(
                        articleModel.byline ?? "-",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ))
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${articleModel.source ?? ""}, ${articleModel.publishedDate ?? ""}",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: blackColor),
                  ),
                  Text(
                    articleModel.type ?? "",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: blackColor),
                  ),
                  SectionInfo(header: "Title", data: articleModel.title ?? ""),
                  SectionInfo(header: "Abstract", data: articleModel.abstract ?? ""),
                  SectionInfo(header: "Des Facet", data: articleModel.geoFacet.toString()),
                  SectionInfo(header: "Org Facet", data: articleModel.geoFacet.toString()),
                  SectionInfo(header: "Per Facet", data: articleModel.geoFacet.toString()),
                  SectionInfo(header: "Geo Facet", data: articleModel.geoFacet.toString()),
                  SectionInfo(header: "Des Facet", data: articleModel.geoFacet.toString()),
                  SectionInfo(header: "Org Facet", data: articleModel.geoFacet.toString()),
                  SectionInfo(header: "Per Facet", data: articleModel.geoFacet.toString()),
                  SectionInfo(header: "Geo Facet", data: articleModel.geoFacet.toString()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
