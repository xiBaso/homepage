import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepage/models/category_model.dart';
import 'package:homepage/widgets/hero_carousel_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<String> imgList = [
    //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ_6t1p6jg9_zGhdWMw6bmad-3UW3m3ums4w&usqp=CAU',
    //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2I75rxUUGe78wcrBLRtUg5NAoqSCJf88-Tg&usqp=CAU',
    //   'https://i.pinimg.com/originals/63/e5/3a/63e53a677ea6ff964722d9bc76bc1c7e.jpg',
    //   'https://www.acquisition-international.com/wp-content/uploads/2021/09/UI-UX-Design.jpg'
    // ];

    // final List<String> imgList = [
    //   'images/graphics_design.png',
    //   'images/logo.png',
    //   'images/poster.png',
    //   'images/ui_ux.jpg'
    // ];

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black,
                )
              ],
            ),
          ),
          SizedBox(height: 40),

          // Catagories text

          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),

          // Wrong, use carousel instead
          // Container(
          //   height: 300,
          //   width: double.maxFinite,
          //   child: TabBarView(
          //     children: [
          //       Container(
          //         width: 200,
          //         height: 300,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(20),
          //             color: Colors.white,
          //             image: DecorationImage(
          //                 image: AssetImage('images/ui_ux.jepg'))),
          //       )
          //     ],
          //   ),
          // )

          SizedBox(height: 40),

          // **Carousel**

          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.8,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              // autoPlay: true,
            ),
            items: Category.categories
                .map((Category) => HeroCarouselCard(category: Category))
                .toList(),
          )),
        ],
      ),
    );
  }
}
