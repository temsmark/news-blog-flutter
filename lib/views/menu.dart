import 'package:blog/controllers/article_controller.dart';
import 'package:blog/models/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

import 'article.dart';


class MenuPage extends StatelessWidget {
   MenuPage({Key? key}) : super(key: key);
   final _menuController = Get.put(ArticleController());

   @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(

        body:Container(
          padding: const EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfff6921e),
                Color(0xffee4036)]
              ,
            ),
          ),
          child:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Obx(() {
                return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // childAspectRatio: 1.5,
                      mainAxisExtent: 199,
                      crossAxisSpacing: 9,
                      mainAxisSpacing: 9,
                    ),
                    itemCount: _menuController.menus.length,
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    itemBuilder: (BuildContext context,int index){
                      var menu = _menuController.menus[index];
                      return Card(
                         clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: InkWell(
                          onTap: (){
                            Get.to(ArticlePage());
                          },
                          child: Column(
                            children:  [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Ink.image(
                                    image:  CachedNetworkImageProvider(
                                        menu.imageUrl.toString()
                                    ),
                                     // height: 116.5,
                                    height: 191,
                                    fit: BoxFit.fill,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                      child: Text('${menu.name}',style: GoogleFonts.akayaTelivigala(

                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,

                                      ),)

                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }
            ),
          )

        ),
      ),
    );
  }
}
