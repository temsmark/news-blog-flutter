import 'package:blog/views/news_detail.dart';
import 'package:blog/views/user_articles.dart';
import 'package:blog/widgets/news_sizebox.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class AllNews extends StatelessWidget {
  const AllNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Scaffold(
    body: Column(
        children: [
          SizedBox(
            height:250,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount:10,
              itemBuilder: (_,index){
                return InkWell(
                  onTap: (){
                    Get.to(()=>NewsDetail(),arguments: ["Lorem Ipsum is simply dummy text of the printing and typesetting industry"]);
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: CachedNetworkImage(
                                imageUrl: 'https://picsum.photos/id/$index/200/200',
                                fit: BoxFit.cover,
                                height: 450,
                                width: 350,
                              ),
                            ),
                            Positioned(
                              bottom: 16,
                              right: 16,
                              left: 16,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black12.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Hello there i am new here',style: GoogleFonts.breeSerif(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        )
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text('written in july 2020',style: GoogleFonts.breeSerif(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        )


                                        )
                                    ),

                                  ],
                                ),

                              ),
                            ),

                          ],
                        )
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 16 ,bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Your Newsletters',style: GoogleFonts.breeSerif(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),),
                InkWell(
                  onTap: (){
                    Get.to(()=>UserArticle(),arguments: ["All Articles"],popGesture: true);

                  },
                  child: Text('View More',style: GoogleFonts.breeSerif(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount:100,
              itemBuilder: (_,index){
                return   buildSizedBox(index);
              },
            ),
          )

        ]),

  );
}
