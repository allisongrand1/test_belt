import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  final List? cardList;
  final double height;
  const Carousel({this.cardList, Key? key, this.height = 300})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselState();
  }
}

class _CarouselState extends State<Carousel> {
  int _currentIndex = 0;

  final CarouselController _controller = CarouselController();

  void onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.cardList!.map((card) {
      return Builder(builder: (BuildContext context) {
        return ClipRRect(
            child: Image.network(
          "$card",
          fit: BoxFit.cover,
        ));
      });
    }).toList();
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: widget.height,
          child: Row(
            children: [
              Expanded(
                child: CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    aspectRatio: 1,
                    onPageChanged: onPageChange,
                    autoPlay: false,
                  ),
                  carouselController: _controller,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.cardList!.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(
                                _currentIndex == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ))
      ],
    );
  }
}
