import 'package:blog/models/home.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  var itemsList = <Home>[].obs;

  @override
  void onInit() {
    fetchItems();
    super.onInit();
  }

  void fetchItems() {
    List<Home> items = [
      Home(
        id: 1,
        name: 'Popular',
        imageUrl: 'https://picsum.photos/id/1/200/200',
      ),
      Home(
        id: 2,
        name: 'Sports',
        imageUrl: 'https://picsum.photos/id/2/200/200',
      ),
      Home(
        id: 3,
        name: 'Politics',
        imageUrl: 'https://picsum.photos/id/3/200/200',
      ),
      Home(
        id: 4,
        name: 'Entertainment',
        imageUrl: 'https://picsum.photos/id/4/200/200',
      ),
      Home(
        id: 5,
        name: 'Gossip',
        imageUrl: 'https://picsum.photos/id/5/200/200',
      ),
      Home(
        id: 6,
        name: 'Music',
        imageUrl: 'https://picsum.photos/id/6/200/200',
      ),

      Home(
        id: 7,
        name: 'Music',
        imageUrl: 'https://picsum.photos/id/6/200/200',
      ),

      Home(
        id: 8,
        name: 'Music',
        imageUrl: 'https://picsum.photos/id/6/200/200',
      ),

      Home(
        id: 9,
        name: 'Music',
        imageUrl: 'https://picsum.photos/id/6/200/200',
      ),
      Home(
        id: 10,
        name: 'Music',
        imageUrl: 'https://picsum.photos/id/6/200/200',
      ),

    ];
    itemsList.value = items;

  }
}