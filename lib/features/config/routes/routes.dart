import 'package:article_app/features/articles/data/models/article_model.dart';
import 'package:article_app/features/articles/presentation/pages/article_list/article_details.dart';
import 'package:article_app/features/articles/presentation/pages/article_list/article_list_page.dart';
import 'package:article_app/features/core/componts/photo_viewer/photo_view_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_view/photo_view.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: ArticleListPage.path,
  routes: <RouteBase>[
    GoRoute(
      name: ArticleListPage.name,
      path: ArticleListPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const ArticleListPage();
      },
      routes: <RouteBase>[
        GoRoute(
          name: ArticleDetailsPage.name,
          path: ArticleDetailsPage.path,
          builder: (BuildContext context, GoRouterState state) {
            ArticleModel articleModel;
            try {
              articleModel = state.extra as ArticleModel;
            } catch (ex) {
              articleModel = ArticleModel();
            }
            return ArticleDetailsPage(
              articleModel: articleModel,
            );
          },
        ),
      ],
    ),
    GoRoute(
      name: PhotoViewerPage.name,
      path: PhotoViewerPage.path,
      builder: (BuildContext context, GoRouterState state) {
        String url = state.extra.toString();

        return PhotoViewerPage(
          url: url,
        );
      },
    ),
  ],
);
