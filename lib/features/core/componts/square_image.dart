import 'dart:convert';
import 'package:article_app/features/config/theme/colors.dart';
import 'package:article_app/features/core/componts/photo_viewer/photo_view_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///This Widget Show Network Image And Give Feedback is Image is Loading, Error and Loading Done - using CachedNetworkImage
class SquareImage extends StatelessWidget {
  String url;
  double width, height;
  double? borderRadius;
  double? elevation;
  bool? isClickable;
  BoxFit? fit;

  SquareImage({
    super.key,
    this.fit,
    this.isClickable,
    this.elevation,
    required this.url,
    this.borderRadius,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStatePropertyAll(elevation ?? 0),
            backgroundColor: const MaterialStatePropertyAll(transparentColor),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 0),
              ),
            ),
            padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
          ),
          onPressed: (isClickable ?? true)
              ? () {
                  context.goNamed(PhotoViewerPage.name, pathParameters: {"url": url});
                }
              : null,
          child: CachedNetworkImage(
            imageUrl: url ?? "",
            imageBuilder: (context, imageProvider) => Container(
              alignment: Alignment.center,
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(borderRadius ?? 0),
                border: Border.all(
                  width: 1,
                  color: primaryColor,
                ),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            errorWidget: (context, url, object) => Container(
              alignment: Alignment.center,
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius ?? 0),
                color: whiteColor,
                border: Border.all(width: 1, color: redColor),
              ),
              child: Icon(
                Icons.info_outline,
                size: (height + width) / 2,
                color: redColor,
              ),
            ),
            placeholder: (context, url) => Container(
              alignment: Alignment.center,
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius ?? 0),
                color: whiteColor,
                border: Border.all(width: 1, color: secondaryColor),
              ),
              child: const CircularProgressIndicator(),
            ),
          )),
    );
  }
}
