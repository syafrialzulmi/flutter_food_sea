import 'package:flutter/material.dart';
import 'package:flutter_food_sea/slider_page.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _page = [
    SliderPage(
        title: "Make it easier for you",
        description:
            "We are here ready serve you order 24 hour nonstop, so you can enjoy your holidays",
        image: "assets/images/beer-food-svgrepo-com.svg"),
    SliderPage(
        title: "Healty food first",
        description:
            "We always serve best food you, and give you healty food recomendation. If you want junk food, please dont tell captain",
        image: "assets/images/fast-food-svgrepo-com.svg"),
    SliderPage(
        title: "Call us where ever you are",
        description:
            "Tell us your location and we will bring your food with pleasure",
        image: "assets/images/pub-food-svgrepo-com.svg"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _page.length,
            itemBuilder: (context, int index) {
              return _page[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children:
                          List<Widget>.generate(_page.length, (int index) {
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: (index == _currentPage) ? 20 : 10,
                          height: 10,
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: (index == _currentPage)
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).primaryColor.withAlpha(90),
                          ),
                        );
                      }),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent,
                              // color: Theme.of(context).primaryColor,
                            ),
                            child: const Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
