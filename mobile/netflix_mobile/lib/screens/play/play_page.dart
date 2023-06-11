import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_mobile/widgets/custom_app_bar.dart';
import 'package:netflix_mobile/cubits/cubits.dart';
//import 'package:netflix_mobile/widgets/previews.dart';

import '../../data/data.dart';
import '../../widgets/play_header.dart';
import '../../widgets/content_list.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        //context.bloc<AppBarCubit>().setOffset(_scrollController!.offset);
        context.read<AppBarCubit>().setOffset(_scrollController!.offset);
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      /* floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[850],
        child: const Icon(Icons.cast),
        onPressed: () => ('Cast'),
      ), */
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: BlocBuilder<AppBarCubit, double>(
          builder: (context, scrollOffset) {
            return CustomAppBar(scrollOffset: scrollOffset);
          },
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: const [
           SliverToBoxAdapter(
            child: ContentHeader(featuredContent: sintelContent),
          ),
          /* SliverPadding(
            padding: EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: Previews(
                key: PageStorageKey('previews'),
                title: 'Previews',
                contentList: previews,
              ),
            ),
          ), */
           /* SliverToBoxAdapter(
            child: ContentList(
              key: PageStorageKey('myList'),
              title: 'Tendances actuelles',
              contentList: myList,
            ),
          ),
           SliverToBoxAdapter(
            child: ContentList(
              key: PageStorageKey('originals'),
              title: 'Au cinéma',
              contentList: originals,
              isOriginals: true,
            ),
          ),
           SliverPadding(
            padding: EdgeInsets.only(bottom: 20.0),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                key: PageStorageKey('trending'),
                title: 'Ils arrivent bientôt',
                contentList: trending,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 20.0),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                key: PageStorageKey('trending'),
                title: 'Animations',
                contentList: trending,
              ),
            ),
          )
         */],
      ),
    );
  }

}
