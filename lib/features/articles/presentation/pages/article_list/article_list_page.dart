import 'package:article_app/features/articles/presentation/providers/remote/article_data_provider.dart';
import 'package:article_app/features/articles/presentation/widgets/article_tile.dart';
import 'package:article_app/features/core/componts/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleListPage extends StatefulWidget {
  const ArticleListPage({super.key});
  static const path = "/";
  static const name = "article-list-page";
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<ArticleListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("NY Times Most Popular Articles"),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert_outlined),
                onPressed: () {},
              )
            ],
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ),
          Consumer(builder: (context, ref, child) {
            var mostViewedArticlesList = ref.watch(mostViewedArticlesListProvider);
            var isGettingMostViewedArticlesList =
                ref.watch(isGettingMostViewedArticlesListProvider);

            var mostViewedArticlesListNotifier = ref.watch(mostViewedArticlesListProvider.notifier);

            if (isGettingMostViewedArticlesList) {
              return SliverToBoxAdapter(
                child: CircularProgressIndicator(),
              );
            } else {
              return SliverList.list(
                  children: mostViewedArticlesList
                      .map((articleModel) => ArticleTile(articleModel: articleModel))
                      .toList());
            }
          }),
          Consumer(builder: (context, ref, child) {
            var mostViewedArticlesListNotifier = ref.watch(mostViewedArticlesListProvider.notifier);

            return SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  mostViewedArticlesListNotifier.getPeriod("7");
                },
                child: Text("GET"),
              ),
            );
          }),
        ],
      ),
    );
  }
}
