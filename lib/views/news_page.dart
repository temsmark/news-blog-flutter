import 'package:blog/views/all_news_page.dart';
import 'package:blog/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          centerTitle: true,
          automaticallyImplyLeading: false,
            elevation: 0,
            // title:const Text("News"),
            // centerTitle: true,
            bottom:  TabBar(
              indicatorColor: Colors.black26,
              padding: const EdgeInsets.only(left: 8, right: 8),
                tabs:[
                  Tab(
                    child: Text("All News", style: GoogleFonts.breeSerif(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  Tab(
                    child: Text("Tech", style: GoogleFonts.breeSerif(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  Tab(
                    child: Text("Politics", style: GoogleFonts.breeSerif(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  Tab(
                    child: Text("LifeStyle", style: GoogleFonts.breeSerif(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),

                ]
            )
        ),
        body: const TabBarView(
          children: [
            AllNews(),
            Center(child: Text("Technology Page")),
            Center(child: Text("Politics Page")),
            Center(child: Text("LifeStyle Page")),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          items:  [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onDoubleTap: ()=>Get.to(()=>HomePage()),
                  child: const Icon(Icons.home,color: Colors.black)),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.bookmark,color: Colors.black),
              label: "Book Mark",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.black),
              label: "Search",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings,color: Colors.black),
              label: "Profile",
            ),
          ],
        ),
      ),
  );
}
