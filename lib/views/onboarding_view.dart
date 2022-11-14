import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:remote_task/utilis/my_button.dart';

import '../constants.dart';
import '../data/image_list.dart';
import '../data/sub_title_list.dart';
import '../data/title_list.dart';
import '../utilis/intro_item.dart';
import 'home_view.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({Key? key}) : super(key: key);

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  final SwiperController _controller = SwiperController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Swiper(
            loop: false,
            autoplay: true,
            index: _currentIndex,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _controller,
            pagination: SwiperPagination(
              margin: const EdgeInsets.only(bottom: 80),
              builder: DotSwiperPaginationBuilder(
                activeColor: appColor,
                activeSize: 12.0,
                color: Colors.grey.shade300,
              ),
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              return IntroItem(
                title: titles[index],
                subtitle: subtitles[index],
                imageUrl: imageUrl[index],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MyButton(
                bgColor: appColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ),
                  );
                },
                title: 'iniciar sesión',
              ),
            ),
          )
        ],
      ),
    );
  }
}
