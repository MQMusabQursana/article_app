import 'package:article_app/features/articles/presentation/providers/remote/article_data_provider.dart';
import 'package:article_app/features/articles/presentation/widgets/article_tile.dart';
import 'package:article_app/features/config/theme/colors.dart';
import 'package:article_app/features/core/componts/circle_image.dart';
import 'package:article_app/features/core/utils/debugging_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleListPage extends ConsumerStatefulWidget {
  const ArticleListPage({super.key});
  static const path = "/";
  static const name = "article-list-page";

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<ArticleListPage> {
  Widget PeriodButton(
    String period,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
          onPressed: () {
            ref.read(mostViewedArticlesListProvider.notifier).getPeriod(period);
          },
          child: Text("Period $period")),
    );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    var mostViewedArticlesList = ref.watch(mostViewedArticlesListProvider);
    var isGettingMostViewedArticlesList = ref.watch(isGettingMostViewedArticlesListProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
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
          isGettingMostViewedArticlesList
              ? SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                )
              : SliverList.list(
                  children: mostViewedArticlesList
                      .map((articleModel) => ArticleTile(articleModel: articleModel))
                      .toList()),
          SliverList.list(children: [
            Divider(),
            Container(
                width: double.infinity,
                child: Text(
                  "Select a Period",
                  style: TextStyle(fontSize: 20.sp),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(child: PeriodButton("1")),
                Expanded(child: PeriodButton("7")),
                Expanded(child: PeriodButton("30")),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
          ])
        ],
      ),
    );
  }
}
