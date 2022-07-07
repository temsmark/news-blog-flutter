import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/news_sizebox.dart';

class UserArticle extends StatelessWidget {
  UserArticle({Key? key}) : super(key: key);
  dynamic data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Get.back(),
              ),
              centerTitle: true,
              title: Text(
                "${data[0]}",
                style: GoogleFonts.breeSerif(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              backgroundColor: Colors.black26,
              elevation: 0,
            ),
            body: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Articles (240)",
                      style: GoogleFonts.breeSerif(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 100,
                  itemBuilder: (_, index) {
                    return buildSizedBox(index);
                  },
                ),
              )
            ])
        )
    );
  }
}
