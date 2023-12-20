import 'package:article_app/features/config/theme/colors.dart';
import 'package:article_app/features/core/componts/photo_viewer/photo_view_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///This Widget Show Network Image And Give Feedback is Image is Loading, Error and Loading Done - using CachedNetworkImage

class CircleImage extends StatelessWidget {
  String url;
  double size;
  double? elevation;
  bool? isClickable;

  CircleImage({
    super.key,
    this.isClickable,
    this.elevation,
    required this.url,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStatePropertyAll(elevation ?? 0),
            backgroundColor: const MaterialStatePropertyAll(transparentColor),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(size / 2),
              ),
            ),
            padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
          ),
          onPressed: (isClickable ?? true)
              ? () {
                  GoRouter.of(context).pushNamed(PhotoViewerPage.name, extra: url);

                  // context.pushNamed(PhotoViewerPage.path, pathParameters: {"url": url});
                }
              : null,
          child: CachedNetworkImage(
            imageUrl: url ?? "",
            imageBuilder: (context, imageProvider) => Container(
              alignment: Alignment.center,
              width: size,
              height: size,
              decoration: BoxDecoration(
                color: whiteColor,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                  color: whiteColor,
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
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whiteColor,
                border: Border.all(width: 1, color: redColor),
              ),
              child: Icon(
                Icons.info_outline,
                size: size / 2,
                color: redColor,
              ),
            ),
            placeholder: (context, url) => Container(
              alignment: Alignment.center,
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whiteColor,
                border: Border.all(width: 1, color: secondaryColor),
              ),
              child: const CircularProgressIndicator(),
            ),
          )),
    );
  }
}
