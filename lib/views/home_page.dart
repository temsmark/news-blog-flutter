import 'package:blog/views/menu.dart';
import 'package:blog/views/news_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_page_controller.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
final _homeController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:Column(
            children:[
              const Padding(
                  padding: EdgeInsets.all(20.0),
              ),
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Obx(() {
                    return GridView.builder(
                      shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: _homeController.itemsList.length,
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 1/1.1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (BuildContext context,int index){
                          var item = _homeController.itemsList[index];
                          return CachedNetworkImage(
                            fit: BoxFit.cover,
                              imageUrl: '${item.imageUrl}'
                          );

                        });
                  }
                ),
              ),
              const SizedBox(height: 40),
              Text("Sharing News From All \n Over The World",style: GoogleFonts.breeSerif(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Text("The social media platforms have taken \n over the distribution of news globally",style: GoogleFonts.breeSerif(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
                textAlign: TextAlign.center,
              ),
             const Spacer(),
              ElevatedButton(onPressed: (){
                Get.offAll(()=>NewsPage());
              },
                style: ElevatedButton.styleFrom(
                 primary: Colors.black,
                ),
                  child:   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Get Started",style: GoogleFonts.breeSerif(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                ),
            ]
          )
        ),
    );
  }
}
