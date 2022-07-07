import 'package:blog/models/menu.dart';
import 'package:get/get.dart';

import '../models/article.dart';
import '../services/api_service.dart';

class ArticleController extends GetxController{
  var articleList = <Datum>[].obs;
  var menus = <Menu>[].obs;
  var loading = false.obs;
  @override
  void onInit() {
    fetchArticles();
    getMenus();
    super.onInit();
  }

  void fetchArticles() async {
    loading.value = true;
    final articles = (await ApiService.getArticles()) as List<Datum>;
    articleList.value = articles;
    loading.value = false;
  }

  void getMenus() async {
    List<Menu> menuList = [
      Menu(
        id: 1,
        name: 'Popular',
        imageUrl: 'https://picsum.photos/id/1/200/200',
        isFavorite: true,
      ),
      Menu(
        id: 2,
        name: 'Sports',
        imageUrl: 'https://picsum.photos/id/2/200/200',
        isFavorite: true,
      ),
      Menu(
        id: 3,
        name: 'Politics',
        imageUrl: 'https://picsum.photos/id/3/200/200',
        isFavorite: true,
      ),
      Menu(
        id: 4,
        name: 'Entertainment',
        imageUrl: 'https://picsum.photos/id/4/200/200',
        isFavorite: true,
      ),
      Menu(
        id: 5,
        name: 'Gossip',
        imageUrl: 'https://picsum.photos/id/5/200/200',
        isFavorite: true,
      ),
      Menu(
        id: 6,
        name: 'Music',
        imageUrl: 'https://picsum.photos/id/6/200/200',
        isFavorite: true,
      ),
      Menu(
        id: 7,
        name: 'Reggae',
        imageUrl: 'https://picsum.photos/id/7/200/200',
        isFavorite: true,
      ),
      Menu(
        id: 8,
        name: 'News',
        imageUrl: 'https://picsum.photos/id/8/200/200',
        isFavorite: true,
      ),
      Menu(
        id: 9,
        name: 'Lifestyle',
        imageUrl: 'https://picsum.photos/id/10/200/200',
        isFavorite: true,
      ),
      Menu(
        id: 10,
        name: 'Technology',
        imageUrl: 'https://picsum.photos/id/9/200/200',
        isFavorite: true,
      ),

    ];
    menus.value = menuList;
  }




}