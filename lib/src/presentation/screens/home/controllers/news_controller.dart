import 'package:get/get.dart';

import '../../../../data/models/news.dart';

class NewsController extends GetxController {
  final _news = <News>[].obs;
  final _isLoading = false.obs;

  List<News> get news => _news;
  RxBool get isLoading => _isLoading;

  @override
  void onInit() {
    super.onInit();
    _fetchNews();
  }

  Future<void> _fetchNews() async {
    _isLoading.value = true;
    final result = getNews();
    Future.delayed(const Duration(seconds: 2), () {
      _news.addAll(result);
      _isLoading.value = false;
    });
  }
}

List<News> getNews() {
  const List<News> _latestNews = [
    News(
      title:
          'Neymar to dedicate his first World Cup goal in Qatar to Bolsonaro',
      category: 'HOT',
      imageUrl: 'assets/images/image_3.png',
      publishedAt: 'Oct 30, 2022',
    ),
    News(
      title:
          'Mbappe and his new plan to get rid of Neymar at PSG: Messi is key',
      category: 'TRENDING',
      imageUrl: 'assets/images/image_2.png',
      publishedAt: 'Oct 30, 2022',
    ),
    News(
      title: 'Jude Bellingham emerges as top target for Chelsea',
      category: 'HOT',
      imageUrl: 'assets/images/image_1.png',
      publishedAt: 'Oct 30, 2022',
    ),
  ];

  return _latestNews;
}
