import 'package:article_app/features/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';

///This page allow us to zoom in and out of images - using photoview
class PhotoViewerPage extends StatelessWidget {
  static const path = "/photo-viewer";
  static const name = "photo-viewer-page";
  final String _url;

  const PhotoViewerPage({super.key, required String url}) : _url = url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PhotoView(
          loadingBuilder: (context, event) => Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Please Wait . . .",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
          errorBuilder: (context, object, error) => Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          size: 40,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Unable to load image",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.cairo(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    )),
              ),
          imageProvider: NetworkImage(_url)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (context.canPop()) {
            context.pop();
          }
        },
        backgroundColor: primaryColor,
        child: const Icon(
          Icons.clear,
          color: Colors.white,
        ),
      ),
    );
  }
}
