import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../views/news_detail.dart';
SizedBox buildSizedBox(int index) {
  return SizedBox(
    height: 150,
    child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
        child:InkWell(
          onTap: (){
            Get.to(()=>NewsDetail(),arguments: ["Lorem Ipsum is simply dummy text of the printing and typesetting industry"]);
          },
          child: Row(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                child: CachedNetworkImage(
                  imageUrl: "https://picsum.photos/id/$index/200/200",
                  fit: BoxFit.cover,
                  height: 150,
                  width: 150,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text("This is a headline or title",style: GoogleFonts.breeSerif(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    )),
                    Text("of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from  by Cicero are ",style: GoogleFonts.breeSerif(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                    Text("02.09.2022 11:00 pm",style: GoogleFonts.breeSerif(
                      fontSize: 12,
                      color: Colors.black26,
                      fontWeight: FontWeight.w500,
                    )),
                  ],
                ),
              )
            ],
          ),
        )
    ),
  );
}
