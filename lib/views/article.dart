import 'package:blog/controllers/article_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlePage extends StatelessWidget {
  ArticlePage({Key? key}) : super(key: key);
  final ArticleController _articleController = Get.put(ArticleController());

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Get.back(),
            ),
            centerTitle: true,
            title:  Text("Entertainment Articles", style: GoogleFonts.akayaTelivigala(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            )),
            backgroundColor: Colors.blue,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height-100,
                  child:Obx(() =>_articleController.loading.value?const Center(
                    child:CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ): ListView.builder(
                    itemCount: _articleController.articleList.length,
                    itemBuilder: (context, index) {
                      var article = _articleController.articleList[index];
                      return listArticles(article);
                    },
                  ),
                  ),
                ),
                const SizedBox(height: 100,)
              ],
            ),
          )),
    );
  }
}

Widget listArticles(article) {
  return Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child:Column(
      children: [
        Stack(
            children:[
              Ink.image(
                // image: NetworkImage(article.featuredImage)

                image: const CachedNetworkImageProvider(
                    'https://images.unsplash.com/photo-1655937334450-a045002a952c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80'
                )
                ,height: 200,
                fit: BoxFit.cover,
                child:InkWell(
                  onTap: (){
                    Get.snackbar('Article','${article.title}',snackPosition: SnackPosition.BOTTOM,);
                  },
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white70.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(article.title,style: GoogleFonts.staatliches(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,

                      ),)
                  ),
                ),
              ),
            ]
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(article.content,style:GoogleFonts.akayaTelivigala(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),),
        ),
        const SizedBox(height: 10),
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('${article.ago}'),
            TextButton(
              child: const Text('Author'),
              onPressed: () {
                Get.bottomSheet(
                  SizedBox(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('${article.content}',style:GoogleFonts.akayaTelivigala(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top:Radius.circular(35),
                    ),
                  ),
                  enableDrag: true,
                  isScrollControlled: true,
                );
              },
            ),
            TextButton(
              child: const Text('Read More'),
              onPressed: () {
                Get.defaultDialog(
                  title: 'You want to read this article?',
                  middleText: '${article.title}',
                  middleTextStyle: GoogleFonts.akayaTelivigala(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  content: Text('${article.content}'),
                );
              },
            ),
          ],
        )
      ],
    ),
  );
}


