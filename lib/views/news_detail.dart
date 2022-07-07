import 'package:blog/views/user_articles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDetail extends StatelessWidget {
   NewsDetail({Key? key}) : super(key: key);
dynamic data=Get.arguments;
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black26,
              actions: [
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: (){},
                ),
              ],
              expandedHeight: 300,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("All News",style: GoogleFonts.breeSerif(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )
                  ,),
                background: CachedNetworkImage(
                  imageUrl: 'https://picsum.photos/id/1/200/200',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
              Container(
               padding: const EdgeInsets.all(30.0),
              child: Column(
                  children:[
                    Text("${data[0]}", style: GoogleFonts.breeSerif(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    )),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.bottomSheet(
                                backgroundColor: Colors.white,
                                elevation: 10,
                                Container(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            clipBehavior: Clip.antiAlias,
                                            borderRadius: BorderRadius.circular(30),
                                            child: CachedNetworkImage(
                                              imageUrl: "https://picsum.photos/id/1/200/200",
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          const SizedBox(width: 30,),
                                          Expanded(
                                            child: Text("by Mark Mathenge", style: GoogleFonts.akayaTelivigala(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            )),
                                          ),
                                          InkWell(
                                            onTap: (){
                                              //navigate to user articles and close bottom sheet
                                              Get.off(()=>UserArticle(),arguments: ["Mark Mathenge"]);
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.newspaper,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
                                            child: Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece "
                                                "of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, "
                                                "a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure "
                                                "Latin words, consectetur, from a Lorem Ipsum passage, and going through the"
                                                " cites of the word in classical literature, discovered the undoubtable source."
                                                " Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of The Extremes of Good and Evil) by "
                                                "Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular "
                                                "during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32.The standard chunk "
                                                "of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from  by Cicero are "
                                                "a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure "
                                                "Latin words, consectetur, from a Lorem Ipsum passage, and going through the"
                                                " cites of the word in classical literature, discovered the undoubtable source."
                                                " Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of The Extremes of Good and Evil) by "
                                                "Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular "
                                                "during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32.The standard chunk "
                                                "of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from  by Cicero are "
                                                "also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                                                style: GoogleFonts.breeSerif(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.normal,
                                                )),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                )
                            );
                          },
                          child: Row(
                              children:[
                                ClipRRect(
                                  clipBehavior: Clip.antiAlias,
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(
                                    imageUrl: "https://picsum.photos/id/1/200/200",
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Text("by Mark Mathenge", style: GoogleFonts.akayaTelivigala(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                )),
                              ]
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Text("26/06/2022", style: GoogleFonts.akayaTelivigala(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        )),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Divider(
                        color: Colors.black12,
                        thickness: 1,
                      ),
                    ),
                    Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece "
                        "of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, "
                        "a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure "
                        "Latin words, consectetur, from a Lorem Ipsum passage, and going through the"
                        " cites of the word in classical literature, discovered the undoubtable source."
                        " Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of The Extremes of Good and Evil) by "
                        "Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular "
                        "during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32.The standard chunk "
                        "of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from  by Cicero are "
                        "a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure "
                        "Latin words, consectetur, from a Lorem Ipsum passage, and going through the"
                        " cites of the word in classical literature, discovered the undoubtable source."
                        " Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of The Extremes of Good and Evil) by "
                        "Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular "
                        "during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32.The standard chunk "
                        "of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from  by Cicero are "
                        "also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                        style: GoogleFonts.breeSerif(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        )),
                  ]
              ),
            ),

              ]),
            ),
          ],
        ),
      ),
    );
  }
}
